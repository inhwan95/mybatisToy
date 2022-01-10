package inhwan.toy.mybatistoy.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface TestMapper {
    List<Map<String, Object>> selectAll();
}
