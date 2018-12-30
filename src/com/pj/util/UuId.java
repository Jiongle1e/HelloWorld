package com.pj.util;

import java.util.UUID;

public class UuId {
	public static String getUUID() {
		String uuid = UUID.randomUUID().toString();
		return uuid.replaceAll("-", "");
	}
}
