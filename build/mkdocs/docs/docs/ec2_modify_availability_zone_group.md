<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_modify_availability_zone_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the opt-in status of the Local Zone and Wavelength Zone group for your account

### Description

Changes the opt-in status of the Local Zone and Wavelength Zone group
for your account.

Use
[DescribeAvailabilityZones](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html)
to view the value for `GroupName`.

### Usage

    ec2_modify_availability_zone_group(GroupName, OptInStatus, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_modify_availability_zone_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the Availability Zone group, Local Zone
group, or Wavelength Zone group.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_modify_availability_zone_group_:_OptInStatus">OptInStatus</code></td>
<td><p>[required] Indicates whether you are opted in to the Local Zone
group or Wavelength Zone group. The only valid value is <code
style="white-space: pre;">⁠opted-in⁠</code>. You must contact Amazon Web
Services Support to opt out of a Local Zone or Wavelength Zone
group.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_modify_availability_zone_group_:_DryRun">DryRun</code></td>
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
      Return = TRUE|FALSE
    )

### Request syntax

    svc$modify_availability_zone_group(
      GroupName = "string",
      OptInStatus = "opted-in"|"not-opted-in",
      DryRun = TRUE|FALSE
    )
