package com.gsitm.officialweb.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mobile.device.view.LiteDeviceDelegatingViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

/** ========================================================================================
* @Package Name   : com.gsitm.officialweb.config
* @FileName  : TilesConfig.java
* @Date      : 2019. 10. 17.
* @Author    : OSE
* @Desc      : Tile Config Setting
* ========================================================================================
* 수정일                                         작성자                                                     내용    
* ----------------------------------------------------------------------------------------
* 2019. 10. 17.               OSE                                                최초 생성
* ========================================================================================
*/
@Configuration
public class TilesConfig {
	
	private final String pageTiles = "/WEB-INF/layout/tiles.xml"; // Pc 
	
	private final String mobilePageTiles = "/WEB-INF/layout/mobile/mobile-tiles.xml"; // Mobile
	
	/** ========================================================================================
	 * @Method Name  : tilesConfigurer
	 * @Author   : OSE
	 * @Date     : 2019. 10. 17.
	 * @Desc     : Tiles Definition 
	 * @return
	 * ========================================================================================
	 * 수정일                                         작성자                                                     내용     
	 * ----------------------------------------------------------------------------------------
	 * 2019. 10. 17.            OSE                                        최초 생성
	 * ========================================================================================
	 */
	 
	@Bean
	public TilesConfigurer tilesConfigurer() {
		final TilesConfigurer configurer = new TilesConfigurer();
		configurer.setDefinitions(new String[] { pageTiles , mobilePageTiles });
		configurer.setCheckRefresh(true);
		return configurer;
	}

	/** ========================================================================================
	 * @Method Name  : tilesViewResolver
	 * @Author   : OSE
	 * @Date     : 2019. 10. 17.
	 * @Desc     : Tiles 설정
	 * @return
	 * ========================================================================================
	 * 수정일                                         작성자                                                     내용     
	 * ----------------------------------------------------------------------------------------
	 * 2019. 10. 17.            OSE                                        최초 생성
	 * ========================================================================================
	 */
	 
	@Bean
	public TilesViewResolver tilesViewResolver() {
		final TilesViewResolver tilesViewResolver = new TilesViewResolver();
		tilesViewResolver.setViewClass(TilesView.class);
		//tilesViewResolver.setOrder(1);
		return tilesViewResolver;
	}
	

	/** ========================================================================================
	 * @Method Name  : liteDeviceDelegatingViewResolver
	 * @Author   : OSE
	 * @Date     : 2019. 10. 17.
	 * @Desc     : 모바일 분기 관련 설정 추가부분
	 * @return
	 * ========================================================================================
	 * 수정일                                         작성자                                                     내용     
	 * ----------------------------------------------------------------------------------------
	 * 2019. 10. 17.            OSE                                        최초 생성
	 * ========================================================================================
	 */
	 
	@Bean
	public LiteDeviceDelegatingViewResolver liteDeviceDelegatingViewResolver() {
		LiteDeviceDelegatingViewResolver resolver = new LiteDeviceDelegatingViewResolver(this.tilesViewResolver());

		/**
		 * tilesViewResolver의 Order 값을 최상위로 높여 주지 않으면 앞서 프로퍼티에서 생성한
		 * LiteDeviceDelegatingViewResolver에의해 ContentNegotiatingViewResolver 에서
		 * org.springframework.web.servlet.view.JstlView 이 실행되어 Tiles가 동작하지 않게 된다.
		 */
		resolver.setOrder(0);
		resolver.setMobilePrefix("mobile/");
		resolver.setEnableFallback(true);
		return resolver;
	}
}
