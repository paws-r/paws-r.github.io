<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_create_finding_aggregator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to enable finding aggregation

### Description

Used to enable finding aggregation. Must be called from the aggregation
Region.

For more details about cross-Region replication, see [Configuring
finding
aggregation](https://docs.aws.amazon.com/securityhub/latest/userguide/finding-aggregation.html)
in the *Security Hub User Guide*.

### Usage

    securityhub_create_finding_aggregator(RegionLinkingMode, Regions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_create_finding_aggregator_:_RegionLinkingMode">RegionLinkingMode</code></td>
<td><p>[required] Indicates whether to aggregate findings from all of
the available Regions in the current partition. Also determines whether
to automatically aggregate findings from new Regions as Security Hub
supports them and you opt into them.</p>
<p>The selected option also determines how to use the Regions provided
in the Regions list.</p>
<p>The options are as follows:</p>
<ul>
<li><p><code>ALL_REGIONS</code> - Indicates to aggregate findings from
all of the Regions where Security Hub is enabled. When you choose this
option, Security Hub also automatically aggregates findings from new
Regions as Security Hub supports them and you opt into them.</p></li>
<li><p><code>ALL_REGIONS_EXCEPT_SPECIFIED</code> - Indicates to
aggregate findings from all of the Regions where Security Hub is
enabled, except for the Regions listed in the <code>Regions</code>
parameter. When you choose this option, Security Hub also automatically
aggregates findings from new Regions as Security Hub supports them and
you opt into them.</p></li>
<li><p><code>SPECIFIED_REGIONS</code> - Indicates to aggregate findings
only from the Regions listed in the <code>Regions</code> parameter.
Security Hub does not automatically aggregate findings from new
Regions.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="securityhub_create_finding_aggregator_:_Regions">Regions</code></td>
<td><p>If <code>RegionLinkingMode</code> is
<code>ALL_REGIONS_EXCEPT_SPECIFIED</code>, then this is a
space-separated list of Regions that do not aggregate findings to the
aggregation Region.</p>
<p>If <code>RegionLinkingMode</code> is <code>SPECIFIED_REGIONS</code>,
then this is a space-separated list of Regions that do aggregate
findings to the aggregation Region.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FindingAggregatorArn = "string",
      FindingAggregationRegion = "string",
      RegionLinkingMode = "string",
      Regions = list(
        "string"
      )
    )

### Request syntax

    svc$create_finding_aggregator(
      RegionLinkingMode = "string",
      Regions = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example creates a finding aggregator. This is required to
    # enable cross-Region aggregation.
    svc$create_finding_aggregator(
      RegionLinkingMode = "SPECIFIED_REGIONS",
      Regions = list(
        "us-west-1",
        "us-west-2"
      )
    )

    ## End(Not run)
