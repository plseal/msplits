package com.lin.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.lin.entity.DanweiEntity;
import com.lin.entity.FixedEntity;
@Repository
public class FixedDao
{
	@Resource(name="namedParameterJdbcTemplate")
	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	private static Logger logger = Logger.getLogger(DanweiDao.class);
	public FixedDao()
	{
	}

	public List<FixedEntity> getAllByUsed(String strUsed){
		logger.info("["+this.getClass().getName()+"][getAllByUsed][start]");
		String sql =  "SELECT id,name,used  FROM t_fixed where used='" + strUsed + "'";
		logger.info("["+this.getClass().getName()+"][getAllByUsed][SQL]"+sql);
		List<FixedEntity>  list = namedParameterJdbcTemplate.getJdbcOperations().query(sql, new BeanPropertyRowMapper(FixedEntity.class));
		logger.info("["+this.getClass().getName()+"][getAllByUsed][end]");
		return list;
	}
	
	public void updatePdfURL(FixedEntity entity ){
		logger.info("["+this.getClass().getName()+"][updatePdfURL][start]");
		String sql =  "UPDATE t_fixed set name = '" + entity.getName() + "' where used = '" + entity.getUsed() + "' and id= '" + entity.getId() + "'" ;
		logger.info("["+this.getClass().getName()+"][updatePdfURL][SQL]"+sql);
		namedParameterJdbcTemplate.getJdbcOperations().update(sql);
		logger.info("["+this.getClass().getName()+"][updatePdfURL][end]");
	}

}
