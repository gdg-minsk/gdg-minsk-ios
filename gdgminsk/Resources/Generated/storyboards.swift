// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Storyboard Scenes

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
internal enum StoryboardScene {
  internal enum EventDetails: StoryboardType {
    internal static let storyboardName = "EventDetails"

    internal static let initialScene = InitialSceneType<EventDetailsView>(storyboard: EventDetails.self)

    internal static let eventDetailsView = SceneType<EventDetailsView>(storyboard: EventDetails.self, identifier: "EventDetailsView")
  }
  internal enum Events: StoryboardType {
    internal static let storyboardName = "Events"

    internal static let initialScene = InitialSceneType<EventsView>(storyboard: Events.self)

    internal static let eventsView = SceneType<EventsView>(storyboard: Events.self, identifier: "EventsView")
  }
  internal enum Speakers: StoryboardType {
    internal static let storyboardName = "Speakers"

    internal static let initialScene = InitialSceneType<SpeakersView>(storyboard: Speakers.self)

    internal static let speakersView = SceneType<SpeakersView>(storyboard: Speakers.self, identifier: "SpeakersView")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

internal protocol StoryboardType {
  static var storyboardName: String { get }
}

internal extension StoryboardType {
  static var storyboard: UIStoryboard {
    let name = self.storyboardName
    return UIStoryboard(name: name, bundle: Bundle(for: BundleToken.self))
  }
}

internal struct SceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type
  internal let identifier: String

  internal func instantiate() -> T {
    let identifier = self.identifier
    guard let controller = storyboard.storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
      fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }
}

internal struct InitialSceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type

  internal func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("ViewController is not of the expected class \(T.self).")
    }
    return controller
  }
}

private final class BundleToken {}
