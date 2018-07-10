package dao;

import java.util.List;

import logic.Scrap;

public interface ScrapDao {

	Scrap scrapComfirm(int studyno, String memberid);

	int scrapMaxNum();

	void studyScrapInsert(Scrap insertScrap);

	void studyScrapDelete(int scrap);

	void scrapAllDelete(Integer studyno);

	Scrap hireScrapSelect(int hireno, String memberid);

	void hireInsertScrap(Scrap insertScrap);

	void hireDeleteScrap(int scrap);
	
	List<Scrap> scrapHirelist(Integer hireno, String memberid);

	Scrap portfolioScrapConfirm(String loginid, String scrapid);

}
