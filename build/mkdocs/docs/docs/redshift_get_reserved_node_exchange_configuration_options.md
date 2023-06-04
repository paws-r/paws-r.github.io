<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_get_reserved_node_exchange_configuration_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the configuration options for the reserved-node exchange

### Description

Gets the configuration options for the reserved-node exchange. These
options include information about the source reserved node and target
reserved node offering. Details include the node type, the price, the
node count, and the offering type.

### Usage

    redshift_get_reserved_node_exchange_configuration_options(ActionType,
      ClusterIdentifier, SnapshotIdentifier, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_get_reserved_node_exchange_configuration_options_:_ActionType">ActionType</code></td>
<td><p>[required] The action type of the reserved-node configuration.
The action type can be an exchange initiated from either a snapshot or a
resize.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_get_reserved_node_exchange_configuration_options_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The identifier for the cluster that is the source for a
reserved-node exchange.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_get_reserved_node_exchange_configuration_options_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>The identifier for the snapshot that is the source for the
reserved-node exchange.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_get_reserved_node_exchange_configuration_options_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>Marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker
value.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_get_reserved_node_exchange_configuration_options_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>get_reserved_node_exchange_configuration_options</code> request.
If this parameter is specified, the response includes only records
beyond the marker, up to the value specified by the
<code>MaxRecords</code> parameter. You can retrieve the next set of
response records by providing the returned marker value in the
<code>Marker</code> parameter and retrying the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ReservedNodeConfigurationOptionList = list(
        list(
          SourceReservedNode = list(
            ReservedNodeId = "string",
            ReservedNodeOfferingId = "string",
            NodeType = "string",
            StartTime = as.POSIXct(
              "2015-01-01"
            ),
            Duration = 123,
            FixedPrice = 123.0,
            UsagePrice = 123.0,
            CurrencyCode = "string",
            NodeCount = 123,
            State = "string",
            OfferingType = "string",
            RecurringCharges = list(
              list(
                RecurringChargeAmount = 123.0,
                RecurringChargeFrequency = "string"
              )
            ),
            ReservedNodeOfferingType = "Regular"|"Upgradable"
          ),
          TargetReservedNodeCount = 123,
          TargetReservedNodeOffering = list(
            ReservedNodeOfferingId = "string",
            NodeType = "string",
            Duration = 123,
            FixedPrice = 123.0,
            UsagePrice = 123.0,
            CurrencyCode = "string",
            OfferingType = "string",
            RecurringCharges = list(
              list(
                RecurringChargeAmount = 123.0,
                RecurringChargeFrequency = "string"
              )
            ),
            ReservedNodeOfferingType = "Regular"|"Upgradable"
          )
        )
      )
    )

### Request syntax

    svc$get_reserved_node_exchange_configuration_options(
      ActionType = "restore-cluster"|"resize-cluster",
      ClusterIdentifier = "string",
      SnapshotIdentifier = "string",
      MaxRecords = 123,
      Marker = "string"
    )
