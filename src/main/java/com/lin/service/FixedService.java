
package com.lin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.lin.dao.FixedDao;
import com.lin.entity.DanweiEntity;
import com.lin.entity.FixedEntity;
@Service
public class FixedService
{
	@Resource(name="fixedDao")
	private FixedDao fixedDao;

	public FixedService()
	{
	}

	
	public List<FixedEntity> getAllByUsed(String strUsed)
	{
		return fixedDao.getAllByUsed(strUsed);
	}

	public void updatePdfURL(FixedEntity entity)
	{
		fixedDao.updatePdfURL(entity);
	}
	
	
}
