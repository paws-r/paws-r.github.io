<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_availability_zones</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the Availability Zones, Local Zones, and Wavelength Zones that are available to you

### Description

Describes the Availability Zones, Local Zones, and Wavelength Zones that
are available to you. If there is an event impacting a zone, you can use
this request to view the state and any provided messages for that zone.

For more information about Availability Zones, Local Zones, and
Wavelength Zones, see [Regions and
zones](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    ec2_describe_availability_zones(Filters, ZoneNames, ZoneIds,
      AllAvailabilityZones, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_availability_zones_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>group-name</code> - For Availability Zones, use the Region
name. For Local Zones, use the name of the group associated with the
Local Zone (for example, <code>us-west-2-lax-1</code>) For Wavelength
Zones, use the name of the group associated with the Wavelength Zone
(for example, <code>us-east-1-wl1-bos-wlz-1</code>).</p></li>
<li><p><code>message</code> - The Zone message.</p></li>
<li><p><code style="white-space: pre;">⁠opt-in-status⁠</code> - The opt-in
status (<code style="white-space: pre;">⁠opted-in⁠</code> | <code
style="white-space: pre;">⁠not-opted-in⁠</code> | <code
style="white-space: pre;">⁠opt-in-not-required⁠</code>).</p></li>
<li><p><code>parent-zoneID</code> - The ID of the zone that handles some
of the Local Zone and Wavelength Zone control plane operations, such as
API calls.</p></li>
<li><p><code>parent-zoneName</code> - The ID of the zone that handles
some of the Local Zone and Wavelength Zone control plane operations,
such as API calls.</p></li>
<li><p><code>region-name</code> - The name of the Region for the Zone
(for example, <code>us-east-1</code>).</p></li>
<li><p><code>state</code> - The state of the Availability Zone, the
Local Zone, or the Wavelength Zone (<code>available</code>).</p></li>
<li><p><code>zone-id</code> - The ID of the Availability Zone (for
example, <code>use1-az1</code>), the Local Zone (for example,
<code>usw2-lax1-az1</code>), or the Wavelength Zone (for example,
<code>us-east-1-wl1-bos-wlz-1</code>).</p></li>
<li><p><code>zone-name</code> - The name of the Availability Zone (for
example, <code style="white-space: pre;">⁠us-east-1a⁠</code>), the Local
Zone (for example, <code
style="white-space: pre;">⁠us-west-2-lax-1a⁠</code>), or the Wavelength
Zone (for example, <code>us-east-1-wl1-bos-wlz-1</code>).</p></li>
<li><p><code>zone-type</code> - The type of zone
(<code>availability-zone</code> | <code>local-zone</code> |
<code>wavelength-zone</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_availability_zones_:_ZoneNames">ZoneNames</code></td>
<td><p>The names of the Availability Zones, Local Zones, and Wavelength
Zones.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_availability_zones_:_ZoneIds">ZoneIds</code></td>
<td><p>The IDs of the Availability Zones, Local Zones, and Wavelength
Zones.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_availability_zones_:_AllAvailabilityZones">AllAvailabilityZones</code></td>
<td><p>Include all Availability Zones, Local Zones, and Wavelength Zones
regardless of your opt-in status.</p>
<p>If you do not use this parameter, the results include only the zones
for the Regions where you have chosen the option to opt in.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_availability_zones_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AvailabilityZones = list(
        list(
          State = "available"|"information"|"impaired"|"unavailable",
          OptInStatus = "opt-in-not-required"|"opted-in"|"not-opted-in",
          Messages = list(
            list(
              Message = "string"
            )
          ),
          RegionName = "string",
          ZoneName = "string",
          ZoneId = "string",
          GroupName = "string",
          NetworkBorderGroup = "string",
          ZoneType = "string",
          ParentZoneName = "string",
          ParentZoneId = "string"
        )
      )
    )

### Request syntax

    svc$describe_availability_zones(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      ZoneNames = list(
        "string"
      ),
      ZoneIds = list(
        "string"
      ),
      AllAvailabilityZones = TRUE|FALSE,
      DryRun = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes the Availability Zones that are available to you.
    # The response includes Availability Zones only for the current region.
    svc$describe_availability_zones()

    ## End(Not run)
