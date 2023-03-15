# HackerNewsUsingSwiftUI

## Task- Create HackerNews Application using SwiftUI

### Solution:


In the last repository, we created the HackerNews Application using MVVM structure. Following changes have been made in the previous repository,
  
  
  1. **Conforming the NewsModel model to Hashable protocol** which allows to create custom types that can be compared for it's equality using it's         hashValue. In this way we are able to use our custom type in a set or as a key in a dictionary while ensuring that it has a unique value.

  2. **Conforming the ViewModel to @ObservedObject property** so that views can watch the state of an external object, and be notified when something important has changed.

  3. **Marking the hitsArray @Published**  allowing us to create observable object that automatically announces when change occur. SwiftUI will automatically monitor for such changes, and re-invoke the body property of any views that rely on the data. In short, whenever an object with a property marked @Published is changed, all views using that object will be reloaded to reflect those changes. Here, since **hitsArray** is marked @Published, it means whenever something was added or removed from items, change announcements are sent as the @Published property wrapper effectively adds a **willSet** property observer to items, so that any changes are automatically sent out to observers.

  4. **Creation of a new view- HackerNewsSwiftUIView**

  A new SwiftUIView is created to display the contents. We will take the reference of our viewModel in this new view using @StateObject property. 
  @StateObject property wrapper is designed to fill a very specific gap in state management: when we need to create a reference type inside one of our    views and make sure it stays alive for use in that view and others we share it with.
  
  Then we create the table view using **VStack**- a vertical stack, which shows views in a top-to-bottom list (similar to UITableView in MVVM repository) and a **HStack** inside it which shows view in a left-to-right list (similar to contents of prototype cell in MVVM repo). This HStack will include the points and title contents which are to be displayed. 
  
  The onAppear is a lifecycle event which reloads the View everytime. It's like reloading the table using DispatchQueue.
  
  
  5. **Marking of our new view as the rootViewController**

  We need to pass our newly created view, i.e, HackerNewsSwiftUIView as the rootViewController in the SceneDelegate file of our project. UIWindow is used to change the root view controller of a window. Finally we apply the makeKeyAndVisible() method with the window and make it the key window.
  
  
  
  Below is the screenshot of the executed task using SwiftUI:
  
  
  <img width="460" alt="HackerNewsSwiftUI" src="https://user-images.githubusercontent.com/122267783/212143078-29bc0ac4-f22a-4258-b6ca-504e39636445.png">

      
   
   
