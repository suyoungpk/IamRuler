package com.imruler.web.dao;

import com.imruler.web.entity.TradeImg;

public interface TradeImgDao {
	int insert(TradeImg tradeImg);
	int update(TradeImg tradeImg);
	int delete(int id);
	int deleteByTradeBoardId(int boardId);
}
