package org.liquidplayer.service;

import android.support.test.InstrumentationRegistry;

import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Test;

import java.net.URI;
import java.util.concurrent.Semaphore;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class Sqlite3Test {
    private class Consts {
        int count;
    }

    @Test
    public void testSqlite3() throws Exception {
        final URI testURI = URI.create("android.resource://" +
                InstrumentationRegistry.getContext().getPackageName() +"/raw/sqlite3test");
        final Semaphore waitToEnd = new Semaphore(0);
        final Consts consts = new Consts();
        final MicroService test = new MicroService(InstrumentationRegistry.getContext(), testURI,
                new MicroService.ServiceStartListener() {
                    @Override
                    public void onStart(MicroService service) {
                        service.addEventListener("count", new MicroService.EventListener() {
                            @Override
                            public void onEvent(MicroService service, String event, JSONObject row){
                                try {
                                    consts.count += row.getInt("id");
                                    assertEquals("Ipsum " + (row.getInt("id")-1),row.getString("info"));
                                } catch (JSONException e) {
                                    assertTrue(false);
                                }

                            }
                        });
                    }
                },
                new MicroService.ServiceErrorListener() {
                    @Override
                    public void onError(MicroService service, Exception e) {
                        assertTrue(false);
                    }
                },
                new MicroService.ServiceExitListener() {
                    @Override
                    public void onExit(MicroService service) {
                        assertEquals(1+2+3+4+5+6+7+8+9+10,consts.count);
                        waitToEnd.release();
                    }
                });
        test.start();
        waitToEnd.acquire();
    }
}
