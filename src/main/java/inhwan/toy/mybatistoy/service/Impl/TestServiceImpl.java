package inhwan.toy.mybatistoy.service.Impl;

import inhwan.toy.mybatistoy.mapper.TestMapper;
import inhwan.toy.mybatistoy.service.TestService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@RequiredArgsConstructor
@Service
public class TestServiceImpl implements TestService {

    private final TestMapper testMapper;

    public List<Map<String, Object>> selectAll(){

        return this.testMapper.selectAll();
    }
}
