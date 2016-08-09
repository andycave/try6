//
//  Job.swift
//  try6
//
//  Created by Andy Cave on 8/8/16.
//  Copyright © 2016 Andy Cave. All rights reserved.
//

import Foundation

class Job {
    
    let id = NSUUID().uuidString
    
    let recordStatus: [String] = ["Unassigned","Assigned","Complete", "Abandoned"]
    var assignedCrew: String = ""
    
    var pole = Pole()
    var inspection = Inspection()
    var safety = Safety()
    var postwork = Postwork()
    var audit = Audit()
    var risk = Risk()
    
}

class Pole {
    
    var poleNumber: String = ""
    var substation: String = "" //mabye
    var feeder: String = ""
    var segment: String = ""
    
    let serviceDrop: [String] = ["None","MRB","MR", "MAR", "MAL", "ML", "MBL"]
    let build: [String] = ["Horizontal", "Vertical","Secondary"]
    
    let Phase: [String] = ["Single Phase - Horizontal","Single Phase - Vertical","Three Phase - Horizontal","Three Phase - Vertical","V-Phase Horizontal","V-Phase Vertical"]
    
    func lookupSubstation(pole: String) -> String {
        //get the substation using the poleNumber
        return "sample feeder name"
    }
    
    func lookupFeeder(pole: String) -> String {
        //get the feeder using the poleNumber
        return "sample feeder name"
    }
    
    func lookupSegment(pole: String) -> String {
        //get the segment using the poleNumber
        return "sample feeder name"
    }
    
}

class Inspection {
    
    let id = NSUUID().uuidString
    
    let accessType: [String] = ["Roadside","Cross Country","Backyard","Seasonal"]
    let alphaTreeType: [String] = ["None","Alder","Ash","Cottonwood","Cyprus","Fir","Locust","Maple","Oak","Pine","Poplar","Willow","Other"]
    let brushCode: [String] = ["None","<25%","25-50%","50-75%","75-100%"]
    let defectType: [String] = ["None","Stem Rot","Butt Rot","Storm Damage","Lean","Erosion","Insect/Pest","Other","Clearance"]
    let densityCode: [String] = ["No Trees","1-5 Trees","6-10 Trees","11-15 tress","16+ Trees"]
    let estimateChips: [String] = ["0","Less than half.","More than half.","1","2","3+"]
    let estimateHours: [String] = ["None","<1","1-2","2-4","4-6","6-8","8-10","10+"]
    let hazardTreeNumber: [String] = ["None","1-5 Trees","6-10 Trees","10+ Trees"]
    let hazardType: [String] = ["None","Alder","Ash","Birch","Cedar","Cottonwood","Doug Fir","Elm","Grand Fir","Hemlock","Locust","Maple","Oak","Pine","Plum","Poplar","Sycamore","Willow","Other"]
    let heightCode: [Int: String] = [0:"0 ft", 1:"1 ft", 2:"2 ft", 3:"3 ft", 4:"4 ft", 5:"5 ft", 6:"10 ft", 7:"15 ft"]
    let overhangClearance: [Int: String] = [0:"<5 ft",1:"5-10 ft",2:"11-15 ft", 3:"16-20 ft", 4:"20+ ft"]
    let removalNumber: [Int: String] = [0:"None",1:"1-5",2:"6-10", 3:"11-15", 4:"16-20", 5:"20+"]
    let rowWidth: [Int: String] = [0:"10", 1:"20", 2:"30", 3:"40+"]
    let sidewallClearance: [Int: String] = [0:"0 ft", 1:"1 ft", 2:"2 ft", 3:"3 ft", 4:"4 ft", 5:"5 ft", 6:"10+ ft", 7:"NA"]
    let sizeClass: [Int: String] = [0:"NA", 1:"<6 in", 2:"6-12 in", 3:"13-24 in", 4:"25-36 in", 5:"36+ in"]
    let target: [Int: String] = [0:"None",1:"Line",2:"Equipment", 3:"Pole", 4:"Structure", 5:"Commercial", 6:"Substation"]
    
    var preworkDate: String = "" //not sure about date format yet
    var flagger: Bool = true
    var cycleBuster: Bool = false
    var preworkComments: String = ""
    
}


class Safety {
    
    let id = NSUUID().uuidString
    
    //organized in top down (on form)
    
    var continued: Bool = false
    var workProcedures: Bool = false
    var jobHazards: Bool = false
    var ppeGlasses: Bool = false
    var ppeHardhat: Bool = false
    var ppeHearing: Bool = false
    var ppeVest: Bool = false
    var tcCones: Bool = false
    var tcFlaggers: Bool = false
    var tcLights: Bool = false
    var tcSigns: Bool = false
    var specialPrecautions: Bool = false
    var energySourceControls: Bool = false
    var aForeman: Bool = false
    var aGroundman: Bool = false
    var aTrimmer: Bool = false
    var aExtra: Bool = false
    
}

class Postwork {
    
    let actualChips: [Int: String] = [0:"0",1:"Less than half.",2:"More than half.", 3:"1", 4:"2", 5:"3+"] //changed this name
    let actualHours: [Int: String] = [0:"None",1:"0.5",2:"1",3:"1.5",4:"2",5:"2.5",6:"3",7:"3.5",8:"4",9:"4.5",10:"5",11:"5.5",12:"6",13:"6.5",14:"7",15:"7.5",16:"8",17:"8.5",18:"9",19:"9.5",20:"10+"]
    let brushCode: [Int: String] = [0:"None",1:"<25%",2:"25-50%", 3:"50-75%", 4:"75-100%"]
    let crewSize: [Int: String] = [0:"1", 1:"2", 2:"3", 3:"4", 4:"5", 5:"6"]
    let defectType: [Int: String] = [0:"None", 1:"Stem Rot", 2:"Butt Rot", 3:"Storm Damage", 4:"Lean", 5:"Erosion", 6:"Insect/Pest", 7:"Other", 8:"Clearance"]
    let hazardTreeNumber: [Int: String] = [0:"None",1:"1-5 Trees",2:"6-10 Trees", 3:"10+ Trees"]
    let hazardTreeType: [Int: String] = [0:"None",1:"Alder",2:"Ash", 3:"Birch", 4:"Cedar", 5:"Cottonwood", 6:"Doug Fir",7:"Elm",8:"Grand Fir", 9:"Hemlock", 10:"Locust", 11:"Maple", 12:"Oak", 13:"Pine", 14:"Plum", 15:"Poplar", 16:"Sycamore", 17:"Willow", 18:"Other"]
    let heightCode: [Int: String] = [0:"0 ft", 1:"1 ft", 2:"2 ft", 3:"3 ft", 4:"4 ft", 5:"5 ft", 6:"10 ft", 7:"15 ft"]
    let herbicide: [Int: String] = [0:"None",1:"In Need",2:"Applied"]  //changed this name
    let notification: [Int: String] = [0:"None", 1:"Phone Contact", 2:"Door Hanger", 3:"In Person", 4:"Voicemail"]
    let overhangClearance: [Int: String] = [0:"<5 ft",1:"5-10 ft",2:"11-15 ft", 3:"16-20 ft", 4:"20+ ft"]
    let removalNumber: [Int: String] = [0:"None",1:"1-5",2:"6-10", 3:"11-15", 4:"16-20", 5:"20+"]
    let rowWidth: [Int: String] = [0:"10", 1:"20", 2:"30", 3:"40+"]
    let sidewallClearance: [Int: String] = [0:"0 ft", 1:"1 ft", 2:"2 ft", 3:"3 ft", 4:"4 ft", 5:"5 ft", 6:"10+ ft", 7:"NA"]
    let target: [Int: String] = [0:"None",1:"Line",2:"Equipment", 3:"Pole", 4:"Structure", 5:"Commercial", 6:"Substation"]
    let workActivity: [Int: String] = [0:"Bucket",1:"Climb",2:"Brush Machine", 3:"Manual"]
    let workType: [Int: String] = [0:"Time and Materials",1:"Service Order",2:"Hot Spot", 3:"Capitol Project", 4:"Outage", 5:"Other", 7:"NA"]
    let yearsBeforeRevisit: [Int: String] = [0:"1 Year", 1:"2 Years", 2:"3 Years", 3:"4 Years", 4:"5 Years", 5:"6 Years", 6:"7+ Years"]
    
    var postworkDate: String = "" //not sure about date format yet
    var postworkComments: String = ""
    
    
}

class Audit {
    
    let brushCode: [Int: String] = [0:"None",1:"<25%",2:"25-50%", 3:"50-75%", 4:"75-100%"]
    let defectType: [Int: String] = [0:"None", 1:"Stem Rot", 2:"Butt Rot", 3:"Storm Damage", 4:"Lean", 5:"Erosion", 6:"Insect/Pest", 7:"Other", 8:"Clearance"]
    let hazardTreeNumber: [Int: String] = [0:"None",1:"1-5 Trees",2:"6-10 Trees", 3:"10+ Trees"]
    let hazardTeeType: [Int: String] = [0:"None",1:"Alder",2:"Ash", 3:"Birch", 4:"Cedar", 5:"Cottonwood", 6:"Doug Fir",7:"Elm",8:"Grand Fir", 9:"Hemlock", 10:"Locust", 11:"Maple", 12:"Oak", 13:"Pine", 14:"Plum", 15:"Poplar", 16:"Sycamore", 17:"Willow", 18:"Other"]
    let heightCode: [Int: String] = [0:"0 ft", 1:"1 ft", 2:"2 ft", 3:"3 ft", 4:"4 ft", 5:"5 ft", 6:"10 ft", 7:"15 ft"]
    let herbicide: [Int: String] = [0:"None",1:"In Need",2:"Applied"]
    let overhangClearance: [Int: String] = [0:"<5 ft",1:"5-10 ft",2:"11-15 ft", 3:"16-20 ft", 4:"20+ ft"]
    let removalNumber: [Int: String] = [0:"None",1:"1-5",2:"6-10", 3:"11-15", 4:"16-20", 5:"20+"]
    let rowWidth: [Int: String] = [0:"10", 1:"20", 2:"30", 3:"40+"]
    let sidewallClearance: [Int: String] = [0:"0 ft", 1:"1 ft", 2:"2 ft", 3:"3 ft", 4:"4 ft", 5:"5 ft", 6:"10+ ft", 7:"NA"]
    let target: [Int: String] = [0:"None",1:"Line",2:"Equipment", 3:"Pole", 4:"Structure", 5:"Commercial", 6:"Substation"]
    
    var Date: String = "" //not sure about date format yet
    var Comments: String = ""
}

class Risk {
    
    let borderName: [Int: String] = [0:"RiskName"]
    let borderSeverity: Int = 0
    
    let dangerName: [Int: String] = [0:"RiskName"]
    let dangerSeverity: Int = 0
    
    let extendedName: [Int: String] = [0:"RiskName"]
    let extendedSeverity: Int = 0
    
    let subordinateName: [Int: String] = [0:"RiskName"]
    let subordinateSeverity: Int = 0
    
    var totalRisk: Int = 0
    
    var riskComments: String = ""
    
    func calculateTotalRisk() -> Int {
        return borderSeverity + dangerSeverity + extendedSeverity + subordinateSeverity
        
    }
    
}




var job = Job()
//job.inspection.defectType = 1



var jobSet: [Job] = []


//jobSet.append(currentJob)

