// HKActivitySummaryExtensions.swift - Copyright 2021 SwifterSwift

#if canImport(HealthKit) && !os(tvOS)
import HealthKit
@available(watchOS 2.2, *)
public extension HKActivitySummary {
    /// SwifterSwift: Check if stand goal is met.
    var isStandGoalMet: Bool { appleStandHoursGoal.compare(appleStandHours) != .orderedDescending }
}
#endif

#if canImport(HealthKit) && !os(tvOS)
import HealthKit
@available(watchOS 2.2, *)
public extension HKActivitySummary {
    /// SwifterSwift: Check if exercise time goal is met.
    var isExerciseTimeGoalMet: Bool { appleExerciseTimeGoal.compare(appleExerciseTime) != .orderedDescending }
}
#endif

#if canImport(HealthKit) && !os(tvOS)
import HealthKit
@available(watchOS 2.2, *)
public extension HKActivitySummary {
    /// SwifterSwift: Check if active energy goal is met.
    var isEnergyBurnedGoalMet: Bool { activeEnergyBurnedGoal.compare(activeEnergyBurned) != .orderedDescending }
}
#endif
