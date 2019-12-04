package com.imruler.web.dao;

import com.imruler.web.entity.TradeItem;

public interface TradeItemDao {
	int insert(TradeItem tradeItem);
	int update(TradeItem tradeItem);
	int deleteByTradeBoardId(int id);
}
	
