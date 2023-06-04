<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_delete_configuration_aggregator</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified configuration aggregator and the aggregated data associated with the aggregator

### Description

Deletes the specified configuration aggregator and the aggregated data
associated with the aggregator.

### Usage

    configservice_delete_configuration_aggregator(
      ConfigurationAggregatorName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_delete_configuration_aggregator_:_ConfigurationAggregatorName">ConfigurationAggregatorName</code></td>
<td><p>[required] The name of the configuration aggregator.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_configuration_aggregator(
      ConfigurationAggregatorName = "string"
    )
