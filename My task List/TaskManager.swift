import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Name"
    var desc = "Description"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
