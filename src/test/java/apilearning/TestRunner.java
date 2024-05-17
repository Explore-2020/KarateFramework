package apilearning;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class TestRunner {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:apilearning/testsuites")
                .tags("@Smoke,@Regression")
                .outputCucumberJson(true)
                .parallel(0);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
