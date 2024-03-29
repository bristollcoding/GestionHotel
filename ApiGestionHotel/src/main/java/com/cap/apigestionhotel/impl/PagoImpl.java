package com.cap.apigestionhotel.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import com.cap.apigestionhotel.dao.PagoDao;
import com.cap.apigestionhotel.dao.entity.Pago;
import com.cap.apigestionhotel.dao.mapper.PagoMapper;

@Component
public class PagoImpl implements PagoDao {

	private final PagoMapper pagoMapper;
	
	public PagoImpl(PagoMapper pagoMapper) {
		this.pagoMapper = pagoMapper;
	}

	@Override
	public List<Pago> findAll() {
		return pagoMapper.findAll();
	}

	@Override
	public Pago findPago(int pag_id) {
		return pagoMapper.findPago(pag_id);
	}

	@Override
	public void insert(Pago pago) {
		pagoMapper.insert(pago);		
	}

	@Override
	public void update(Pago pago) {	
		pagoMapper.update(pago);	
	}

	@Override
	public void delete(int pag_id) {
		pagoMapper.delete(pag_id);		
	}



}
