//: Playground - noun: a place where people can play
/*
Given a sorted integer array without duplicates, return the summary of its ranges.
For example, given [0,1,2,4,5,7], return ["0->2","4->5","7"].
*/

import UIKit

class Solution {
    
    func makeRange(start: Int, end: Int) -> String{
        let str: String;
        
        if (start == end) {
            str = "\(start)";
        } else {
            str = "\(start)->\(end)";
        }
        
        return str;
    }
    
    func summaryRanges(nums: [Int]) -> [String] {
        var result = [String]();
        let len = nums.count;
        
        if (len == 0){
            return result;
        } else {
            var start = nums[0];
            var end = nums[0];
            for var i = 1; i < len; i++ {
                if (nums[i] == nums[i - 1] + 1 ){
                    end = nums[i];
                } else {
                    end = nums[i - 1];
                    result.append(makeRange(start, end: end));
                    start = nums[i];
                    end = nums[i];
                }
            }
            
            result.append(makeRange(start, end: end));
            
        }
        
        return result;
    }
}



