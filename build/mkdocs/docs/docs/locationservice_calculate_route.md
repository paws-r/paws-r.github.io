<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_calculate_route</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Calculates a route given the following required parameters: DeparturePosition and DestinationPosition

### Description

[Calculates a
route](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route.html)
given the following required parameters: `DeparturePosition` and
`DestinationPosition`. Requires that you first [create a route
calculator
resource](https://docs.aws.amazon.com/location/latest/APIReference/API_CreateRouteCalculator.html).

By default, a request that doesn't specify a departure time uses the
best time of day to travel with the best traffic conditions when
calculating the route.

Additional options include:

-   [Specifying a departure
    time](https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
    using either `DepartureTime` or `DepartNow`. This calculates a route
    based on predictive traffic data at the given time.

    You can't specify both `DepartureTime` and `DepartNow` in a single
    request. Specifying both parameters returns a validation error.

-   [Specifying a travel
    mode](https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
    using TravelMode sets the transportation mode used to calculate the
    routes. This also lets you specify additional route preferences in
    `CarModeOptions` if traveling by `Car`, or `TruckModeOptions` if
    traveling by `Truck`.

    If you specify `walking` for the travel mode and your data provider
    is Esri, the start and destination must be within 40km.

### Usage

    locationservice_calculate_route(CalculatorName, CarModeOptions,
      DepartNow, DeparturePosition, DepartureTime, DestinationPosition,
      DistanceUnit, IncludeLegGeometry, TravelMode, TruckModeOptions,
      WaypointPositions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_calculate_route_:_CalculatorName">CalculatorName</code></td>
<td><p>[required] The name of the route calculator resource that you
want to use to calculate the route.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_:_CarModeOptions">CarModeOptions</code></td>
<td><p>Specifies route preferences when traveling by <code>Car</code>,
such as avoiding routes that use ferries or tolls.</p>
<p>Requirements: <code>TravelMode</code> must be specified as
<code>Car</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_:_DepartNow">DepartNow</code></td>
<td><p>Sets the time of departure as the current time. Uses the current
time to calculate a route. Otherwise, the best time of day to travel
with the best traffic conditions is used to calculate the route.</p>
<p>Default Value: <code>false</code></p>
<p>Valid Values: <code>false</code> | <code>true</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_:_DeparturePosition">DeparturePosition</code></td>
<td><p>[required] The start position for the route. Defined in <a
href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World
Geodetic System (WGS 84)</a> format: <code
style="white-space: pre;">⁠[longitude, latitude]⁠</code>.</p>
<ul>
<li><p>For example, <code
style="white-space: pre;">⁠[-123.115, 49.285]⁠</code></p></li>
</ul>
<p>If you specify a departure that's not located on a road, Amazon
Location <a
href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves
the position to the nearest road</a>. If Esri is the provider for your
route calculator, specifying a route that is longer than 400 km returns
a <code style="white-space: pre;">⁠400 RoutesValidationException⁠</code>
error.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠[-180 to 180,-90 to 90]⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_:_DepartureTime">DepartureTime</code></td>
<td><p>Specifies the desired time of departure. Uses the given time to
calculate the route. Otherwise, the best time of day to travel with the
best traffic conditions is used to calculate the route.</p>
<p>Setting a departure time in the past returns a <code
style="white-space: pre;">⁠400 ValidationException⁠</code> error.</p>
<ul>
<li><p>In <a
href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. For example,
<code
style="white-space: pre;">⁠2020–07-2T12:15:20.000Z+01:00⁠</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_:_DestinationPosition">DestinationPosition</code></td>
<td><p>[required] The finish position for the route. Defined in <a
href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">World
Geodetic System (WGS 84)</a> format: <code
style="white-space: pre;">⁠[longitude, latitude]⁠</code>.</p>
<ul>
<li><p>For example, <code
style="white-space: pre;">⁠[-122.339, 47.615]⁠</code></p></li>
</ul>
<p>If you specify a destination that's not located on a road, Amazon
Location <a
href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves
the position to the nearest road</a>.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠[-180 to 180,-90 to 90]⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_:_DistanceUnit">DistanceUnit</code></td>
<td><p>Set the unit system to specify the distance.</p>
<p>Default Value: <code>Kilometers</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_:_IncludeLegGeometry">IncludeLegGeometry</code></td>
<td><p>Set to include the geometry details in the result for each path
between a pair of positions.</p>
<p>Default Value: <code>false</code></p>
<p>Valid Values: <code>false</code> | <code>true</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_:_TravelMode">TravelMode</code></td>
<td><p>Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility. You can choose
<code>Car</code>, <code>Truck</code>, <code>Walking</code>,
<code>Bicycle</code> or <code>Motorcycle</code> as options for the
<code>TravelMode</code>.</p>
<p><code>Bicycle</code> and <code>Motorcycle</code> are only valid when
using Grab as a data provider, and only within Southeast Asia.</p>
<p><code>Truck</code> is not available for Grab.</p>
<p>For more details on the using Grab for routing, including areas of
coverage, see <a
href="https://docs.aws.amazon.com/location/latest/developerguide/grab.html">GrabMaps</a>
in the <em>Amazon Location Service Developer Guide</em>.</p>
<p>The <code>TravelMode</code> you specify also determines how you
specify route preferences:</p>
<ul>
<li><p>If traveling by <code>Car</code> use the
<code>CarModeOptions</code> parameter.</p></li>
<li><p>If traveling by <code>Truck</code> use the
<code>TruckModeOptions</code> parameter.</p></li>
</ul>
<p>Default Value: <code>Car</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_:_TruckModeOptions">TruckModeOptions</code></td>
<td><p>Specifies route preferences when traveling by <code>Truck</code>,
such as avoiding routes that use ferries or tolls, and truck
specifications to consider when choosing an optimal road.</p>
<p>Requirements: <code>TravelMode</code> must be specified as
<code>Truck</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_:_WaypointPositions">WaypointPositions</code></td>
<td><p>Specifies an ordered list of up to 23 intermediate positions to
include along a route between the departure position and destination
position.</p>
<ul>
<li><p>For example, from the <code>DeparturePosition</code> <code
style="white-space: pre;">⁠[-123.115, 49.285]⁠</code>, the route follows
the order that the waypoint positions are given <code
style="white-space: pre;">⁠[[-122.757, 49.0021],[-122.349, 47.620]]⁠</code></p></li>
</ul>
<p>If you specify a waypoint position that's not located on a road,
Amazon Location <a
href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves
the position to the nearest road</a>.</p>
<p>Specifying more than 23 waypoints returns a <code
style="white-space: pre;">⁠400 ValidationException⁠</code> error.</p>
<p>If Esri is the provider for your route calculator, specifying a route
that is longer than 400 km returns a <code
style="white-space: pre;">⁠400 RoutesValidationException⁠</code>
error.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠[-180 to 180,-90 to 90]⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Legs = list(
        list(
          Distance = 123.0,
          DurationSeconds = 123.0,
          EndPosition = list(
            123.0
          ),
          Geometry = list(
            LineString = list(
              list(
                123.0
              )
            )
          ),
          StartPosition = list(
            123.0
          ),
          Steps = list(
            list(
              Distance = 123.0,
              DurationSeconds = 123.0,
              EndPosition = list(
                123.0
              ),
              GeometryOffset = 123,
              StartPosition = list(
                123.0
              )
            )
          )
        )
      ),
      Summary = list(
        DataSource = "string",
        Distance = 123.0,
        DistanceUnit = "Kilometers"|"Miles",
        DurationSeconds = 123.0,
        RouteBBox = list(
          123.0
        )
      )
    )

### Request syntax

    svc$calculate_route(
      CalculatorName = "string",
      CarModeOptions = list(
        AvoidFerries = TRUE|FALSE,
        AvoidTolls = TRUE|FALSE
      ),
      DepartNow = TRUE|FALSE,
      DeparturePosition = list(
        123.0
      ),
      DepartureTime = as.POSIXct(
        "2015-01-01"
      ),
      DestinationPosition = list(
        123.0
      ),
      DistanceUnit = "Kilometers"|"Miles",
      IncludeLegGeometry = TRUE|FALSE,
      TravelMode = "Car"|"Truck"|"Walking"|"Bicycle"|"Motorcycle",
      TruckModeOptions = list(
        AvoidFerries = TRUE|FALSE,
        AvoidTolls = TRUE|FALSE,
        Dimensions = list(
          Height = 123.0,
          Length = 123.0,
          Unit = "Meters"|"Feet",
          Width = 123.0
        ),
        Weight = list(
          Total = 123.0,
          Unit = "Kilograms"|"Pounds"
        )
      ),
      WaypointPositions = list(
        list(
          123.0
        )
      )
    )
