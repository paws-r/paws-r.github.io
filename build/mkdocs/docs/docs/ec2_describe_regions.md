<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_regions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the Regions that are enabled for your account, or all Regions

### Description

Describes the Regions that are enabled for your account, or all Regions.

For a list of the Regions supported by Amazon EC2, see [Amazon Elastic
Compute Cloud endpoints and
quotas](https://docs.aws.amazon.com/general/latest/gr/ec2-service.html).

For information about enabling and disabling Regions for your account,
see [Managing Amazon Web Services
Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html)
in the *Amazon Web Services General Reference*.

### Usage

    ec2_describe_regions(Filters, RegionNames, DryRun, AllRegions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_regions_:_Filters">Filters</code></td>
<td><p>The filters.</p>
<ul>
<li><p><code>endpoint</code> - The endpoint of the Region (for example,
<code
style="white-space: pre;">⁠ec2.us-east-1.amazonaws.com⁠</code>).</p></li>
<li><p><code style="white-space: pre;">⁠opt-in-status⁠</code> - The opt-in
status of the Region (<code
style="white-space: pre;">⁠opt-in-not-required⁠</code> | <code
style="white-space: pre;">⁠opted-in⁠</code> | <code
style="white-space: pre;">⁠not-opted-in⁠</code>).</p></li>
<li><p><code>region-name</code> - The name of the Region (for example,
<code>us-east-1</code>).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_regions_:_RegionNames">RegionNames</code></td>
<td><p>The names of the Regions. You can specify any Regions, whether
they are enabled and disabled for your account.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_regions_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_regions_:_AllRegions">AllRegions</code></td>
<td><p>Indicates whether to display all Regions, including Regions that
are disabled for your account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Regions = list(
        list(
          Endpoint = "string",
          RegionName = "string",
          OptInStatus = "string"
        )
      )
    )

### Request syntax

    svc$describe_regions(
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      RegionNames = list(
        "string"
      ),
      DryRun = TRUE|FALSE,
      AllRegions = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # This example describes all the regions that are available to you.
    svc$describe_regions()

    ## End(Not run)
