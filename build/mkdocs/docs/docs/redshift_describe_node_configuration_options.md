<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_node_configuration_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns properties of possible node configurations such as node type, number of nodes, and disk usage for the specified action type

### Description

Returns properties of possible node configurations such as node type,
number of nodes, and disk usage for the specified action type.

### Usage

    redshift_describe_node_configuration_options(ActionType,
      ClusterIdentifier, SnapshotIdentifier, SnapshotArn, OwnerAccount,
      Filters, Marker, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_node_configuration_options_:_ActionType">ActionType</code></td>
<td><p>[required] The action type to evaluate for possible node
configurations. Specify "restore-cluster" to get configuration
combinations based on an existing snapshot. Specify
"recommend-node-config" to get configuration recommendations based on an
existing cluster or snapshot. Specify "resize-cluster" to get
configuration combinations for elastic resize based on an existing
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_node_configuration_options_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The identifier of the cluster to evaluate for possible node
configurations.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_node_configuration_options_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>The identifier of the snapshot to evaluate for possible node
configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_node_configuration_options_:_SnapshotArn">SnapshotArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the snapshot associated with
the message to describe node configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_node_configuration_options_:_OwnerAccount">OwnerAccount</code></td>
<td><p>The Amazon Web Services account used to create or copy the
snapshot. Required if you are restoring a snapshot you do not own,
optional if you own the snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_node_configuration_options_:_Filters">Filters</code></td>
<td><p>A set of name, operator, and value items to filter the
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_node_configuration_options_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_node_configuration_options</code> request exceed the
value specified in <code>MaxRecords</code>, Amazon Web Services returns
a value in the <code>Marker</code> field of the response. You can
retrieve the next set of response records by providing the returned
marker value in the <code>Marker</code> parameter and retrying the
request.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_node_configuration_options_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>500</code></p>
<p>Constraints: minimum 100, maximum 500.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NodeConfigurationOptionList = list(
        list(
          NodeType = "string",
          NumberOfNodes = 123,
          EstimatedDiskUtilizationPercent = 123.0,
          Mode = "standard"|"high-performance"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_node_configuration_options(
      ActionType = "restore-cluster"|"recommend-node-config"|"resize-cluster",
      ClusterIdentifier = "string",
      SnapshotIdentifier = "string",
      SnapshotArn = "string",
      OwnerAccount = "string",
      Filters = list(
        list(
          Name = "NodeType"|"NumberOfNodes"|"EstimatedDiskUtilizationPercent"|"Mode",
          Operator = "eq"|"lt"|"gt"|"le"|"ge"|"in"|"between",
          Values = list(
            "string"
          )
        )
      ),
      Marker = "string",
      MaxRecords = 123
    )
