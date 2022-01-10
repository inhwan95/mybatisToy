package inhwan.toy.mybatistoy.controller;

import inhwan.toy.mybatistoy.service.TestService;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
@Controller
public class TestController {
    private final TestService testService;
    private final static Logger logger = LoggerFactory.getLogger(TestController.class);

    @GetMapping("/test.do")
    public ModelAndView selectAll(ModelAndView mav){

        List<Map<String, Object>> selectAll = testService.selectAll();
        logger.info("testController - {}", selectAll);

        mav.addObject("selectAll", selectAll);
        mav.addObject("msg", "jstl");
        mav.setViewName("test");
        return mav;
    }
}
