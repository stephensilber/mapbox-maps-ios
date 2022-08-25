#if os(OSX)
import AppKit
#else
import UIKit
#endif
import CoreLocation

/**
 The overlay handler object provided when calling `start(overlayHandler:completion:)`.
 */
public struct SnapshotOverlay {
    // The current `CGContext` being used to create the snapshot image.
    public private(set) var context: CGContext

    // The scale of the snapshot image.
    public private(set) var scale: CGFloat

    // A closure which takes a map coordinate and converts it to a `CGPoint`
    // relative to the coordinate system being used by the `CGContext`.
    public private(set) var pointForCoordinate: ((CLLocationCoordinate2D) -> CGPoint)

    // A closure which takes a `CGPoint` relative to the coordinate system being
    // used by the current `CGContext` and converts it to a `CLLocationCoordinate`.
    public private(set) var coordinateForPoint: ((CGPoint) -> CLLocationCoordinate2D)
}

public typealias SnapshotOverlayHandler = ((SnapshotOverlay) -> Void)
