package kr.co.openkitchen.dao;

import kr.co.openkitchen.classes.GenericOne;
import kr.co.openkitchen.classes.Util;

public interface RegisterDaoInter {

	// 선생님,클래스,공간정보를 넣어줌
	public <T> void insertDTO(T dto);

	// dto 혹은 다른 거면 이거 사용
	// 선생님,클래스,공간정보를 가지고옴 코드 재사용성을 높이기 위해 제네릭 사용함
	default <T> GenericOne<T> selectOne(T genericOne) {
		// 자식에서 직접 구현하자.
		return Util.packing(genericOne);
	};

}
