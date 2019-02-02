package koma;

import java.util.ArrayList;
import java.util.List;

public class Koma {

	List<ArrayList<Integer>> hu = new ArrayList<>();
	hu.add(Arrays.asList(1 ,0));


 	final int[]HU = {-1};
	final int[] KEI = {19 , 21};
	final int[] GIN = {9 ,10 , 11 ,-11 ,-9};
	final int[] KIN = {10 ,{1 , 0} , {1 , 1} ,{0 , -1} , {0, 1} , {-1 , 0}};
	final int[] OU = {{1 , -1} ,{1 , 0} , {1 , 1} , {-1 , -1} , {-1 , 0} ,{-1 , 1}};

	//order 0=先手、1=後手
	final boolean moveChk(int[] bigin , int[] after, int order ,String koma) {
		switch(koma) {
			case "hu":
				for(int i = 0; i < HU.length; i++) {
					if(order == 0) {
						if(HU[i][0] ==  -after[0] - bigin[0] && HU[i][1] == after[1] - bigin[1])
							return true;
						else
							return false;
					}
					if(order == 1){
						if(HU[i][0] ==  after[0] - bigin[0] && HU[i][1] == after[1] - bigin[1])
							return true;
						else
							return false;
					}
				}
			case "kei":
			case "gin":
			case "kin":
			case "ou":
				for(int i = 0; i < OU.length; i++) {

				}
			case "gyoku":

		}
	}





	/*
	 * 香車と角と飛車保留！
	 * int[][] kyou = {
	 */

}
