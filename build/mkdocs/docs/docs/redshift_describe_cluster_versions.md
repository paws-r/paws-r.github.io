<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_cluster_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns descriptions of the available Amazon Redshift cluster versions

### Description

Returns descriptions of the available Amazon Redshift cluster versions.
You can call this operation even before creating any clusters to learn
more about the Amazon Redshift versions. For more information about
managing clusters, go to [Amazon Redshift
Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_describe_cluster_versions(ClusterVersion,
      ClusterParameterGroupFamily, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_cluster_versions_:_ClusterVersion">ClusterVersion</code></td>
<td><p>The specific cluster version to return.</p>
<p>Example: <code>1.0</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_versions_:_ClusterParameterGroupFamily">ClusterParameterGroupFamily</code></td>
<td><p>The name of a specific cluster parameter group family to return
details for.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 alphanumeric characters</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_versions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_versions_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_cluster_versions</code> request exceed the value
specified in <code>MaxRecords</code>, Amazon Web Services returns a
value in the <code>Marker</code> field of the response. You can retrieve
the next set of response records by providing the returned marker value
in the <code>Marker</code> parameter and retrying the request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ClusterVersions = list(
        list(
          ClusterVersion = "string",
          ClusterParameterGroupFamily = "string",
          Description = "string"
        )
      )
    )

### Request syntax

    svc$describe_cluster_versions(
      ClusterVersion = "string",
      ClusterParameterGroupFamily = "string",
      MaxRecords = 123,
      Marker = "string"
    )
