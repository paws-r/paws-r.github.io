<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_calculate_route_matrix</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Calculates a route matrix given the following required parameters: DeparturePositions and DestinationPositions

### Description

[Calculates a route
matrix](https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html)
given the following required parameters: `DeparturePositions` and
`DestinationPositions`. `calculate_route_matrix` calculates routes and
returns the travel time and travel distance from each departure position
to each destination position in the request. For example, given
departure positions A and B, and destination positions X and Y,
`calculate_route_matrix` will return time and distance for routes from A
to X, A to Y, B to X, and B to Y (in that order). The number of results
returned (and routes calculated) will be the number of
`DeparturePositions` times the number of `DestinationPositions`.

Your account is charged for each route calculated, not the number of
requests.

Requires that you first [create a route calculator
resource](https://docs.aws.amazon.com/location/latest/APIReference/API_CreateRouteCalculator.html).

By default, a request that doesn't specify a departure time uses the
best time of day to travel with the best traffic conditions when
calculating routes.

Additional options include:

-   [Specifying a departure
    time](https://docs.aws.amazon.com/location/latest/developerguide/departure-time.html)
    using either `DepartureTime` or `DepartNow`. This calculates routes
    based on predictive traffic data at the given time.

    You can't specify both `DepartureTime` and `DepartNow` in a single
    request. Specifying both parameters returns a validation error.

-   [Specifying a travel
    mode](https://docs.aws.amazon.com/location/latest/developerguide/travel-mode.html)
    using TravelMode sets the transportation mode used to calculate the
    routes. This also lets you specify additional route preferences in
    `CarModeOptions` if traveling by `Car`, or `TruckModeOptions` if
    traveling by `Truck`.

### Usage

    locationservice_calculate_route_matrix(CalculatorName, CarModeOptions,
      DepartNow, DeparturePositions, DepartureTime, DestinationPositions,
      DistanceUnit, TravelMode, TruckModeOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_calculate_route_matrix_:_CalculatorName">CalculatorName</code></td>
<td><p>[required] The name of the route calculator resource that you
want to use to calculate the route matrix.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_matrix_:_CarModeOptions">CarModeOptions</code></td>
<td><p>Specifies route preferences when traveling by <code>Car</code>,
such as avoiding routes that use ferries or tolls.</p>
<p>Requirements: <code>TravelMode</code> must be specified as
<code>Car</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_matrix_:_DepartNow">DepartNow</code></td>
<td><p>Sets the time of departure as the current time. Uses the current
time to calculate the route matrix. You can't set both
<code>DepartureTime</code> and <code>DepartNow</code>. If neither is
set, the best time of day to travel with the best traffic conditions is
used to calculate the route matrix.</p>
<p>Default Value: <code>false</code></p>
<p>Valid Values: <code>false</code> | <code>true</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_matrix_:_DeparturePositions">DeparturePositions</code></td>
<td><p>[required] The list of departure (origin) positions for the route
matrix. An array of points, each of which is itself a 2-value array
defined in <a
href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">WGS
84</a> format: <code
style="white-space: pre;">⁠[longitude, latitude]⁠</code>. For example,
<code style="white-space: pre;">⁠[-123.115, 49.285]⁠</code>.</p>
<p>Depending on the data provider selected in the route calculator
resource there may be additional restrictions on the inputs you can
choose. See <a
href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits">Position
restrictions</a> in the <em>Amazon Location Service Developer
Guide</em>.</p>
<p>For route calculators that use Esri as the data provider, if you
specify a departure that's not located on a road, Amazon Location <a
href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves
the position to the nearest road</a>. The snapped value is available in
the result in <code>SnappedDeparturePositions</code>.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠[-180 to 180,-90 to 90]⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_matrix_:_DepartureTime">DepartureTime</code></td>
<td><p>Specifies the desired time of departure. Uses the given time to
calculate the route matrix. You can't set both
<code>DepartureTime</code> and <code>DepartNow</code>. If neither is
set, the best time of day to travel with the best traffic conditions is
used to calculate the route matrix.</p>
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
id="locationservice_calculate_route_matrix_:_DestinationPositions">DestinationPositions</code></td>
<td><p>[required] The list of destination positions for the route
matrix. An array of points, each of which is itself a 2-value array
defined in <a
href="https://earth-info.nga.mil/index.php?dir=wgs84&amp;action=wgs84">WGS
84</a> format: <code
style="white-space: pre;">⁠[longitude, latitude]⁠</code>. For example,
<code style="white-space: pre;">⁠[-122.339, 47.615]⁠</code></p>
<p>Depending on the data provider selected in the route calculator
resource there may be additional restrictions on the inputs you can
choose. See <a
href="https://docs.aws.amazon.com/location/latest/developerguide/calculate-route-matrix.html#matrix-routing-position-limits">Position
restrictions</a> in the <em>Amazon Location Service Developer
Guide</em>.</p>
<p>For route calculators that use Esri as the data provider, if you
specify a destination that's not located on a road, Amazon Location <a
href="https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html">moves
the position to the nearest road</a>. The snapped value is available in
the result in <code>SnappedDestinationPositions</code>.</p>
<p>Valid Values: <code
style="white-space: pre;">⁠[-180 to 180,-90 to 90]⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_matrix_:_DistanceUnit">DistanceUnit</code></td>
<td><p>Set the unit system to specify the distance.</p>
<p>Default Value: <code>Kilometers</code></p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_calculate_route_matrix_:_TravelMode">TravelMode</code></td>
<td><p>Specifies the mode of transport when calculating a route. Used in
estimating the speed of travel and road compatibility.</p>
<p>The <code>TravelMode</code> you specify also determines how you
specify route preferences:</p>
<ul>
<li><p>If traveling by <code>Car</code> use the
<code>CarModeOptions</code> parameter.</p></li>
<li><p>If traveling by <code>Truck</code> use the
<code>TruckModeOptions</code> parameter.</p></li>
</ul>
<p><code>Bicycle</code> or <code>Motorcycle</code> are only valid when
using <code>Grab</code> as a data provider, and only within Southeast
Asia.</p>
<p><code>Truck</code> is not available for Grab.</p>
<p>For more information about using Grab as a data provider, see <a
href="https://docs.aws.amazon.com/location/latest/developerguide/grab.html">GrabMaps</a>
in the <em>Amazon Location Service Developer Guide</em>.</p>
<p>Default Value: <code>Car</code></p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_calculate_route_matrix_:_TruckModeOptions">TruckModeOptions</code></td>
<td><p>Specifies route preferences when traveling by <code>Truck</code>,
such as avoiding routes that use ferries or tolls, and truck
specifications to consider when choosing an optimal road.</p>
<p>Requirements: <code>TravelMode</code> must be specified as
<code>Truck</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RouteMatrix = list(
        list(
          list(
            Distance = 123.0,
            DurationSeconds = 123.0,
            Error = list(
              Code = "RouteNotFound"|"RouteTooLong"|"PositionsNotFound"|"DestinationPositionNotFound"|"DeparturePositionNotFound"|"OtherValidationError",
              Message = "string"
            )
          )
        )
      ),
      SnappedDeparturePositions = list(
        list(
          123.0
        )
      ),
      SnappedDestinationPositions = list(
        list(
          123.0
        )
      ),
      Summary = list(
        DataSource = "string",
        DistanceUnit = "Kilometers"|"Miles",
        ErrorCount = 123,
        RouteCount = 123
      )
    )

### Request syntax

    svc$calculate_route_matrix(
      CalculatorName = "string",
      CarModeOptions = list(
        AvoidFerries = TRUE|FALSE,
        AvoidTolls = TRUE|FALSE
      ),
      DepartNow = TRUE|FALSE,
      DeparturePositions = list(
        list(
          123.0
        )
      ),
      DepartureTime = as.POSIXct(
        "2015-01-01"
      ),
      DestinationPositions = list(
        list(
          123.0
        )
      ),
      DistanceUnit = "Kilometers"|"Miles",
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
      )
    )
