package com.bxz.job;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Created by SQ_BXZ on 2018-04-17.
 */
@Component
public class TestJob {
	@Scheduled(cron= "*/5 * * * * ?")
	public void test(){
		System.out.println("测试定时任务");
	}
}
