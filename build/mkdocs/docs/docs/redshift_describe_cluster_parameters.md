<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_cluster_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group

### Description

Returns a detailed list of parameters contained within the specified
Amazon Redshift parameter group. For each parameter the response
includes information such as parameter name, description, data type,
value, whether the parameter value is modifiable, and so on.

You can specify *source* filter to retrieve parameters of only specific
type. For example, to retrieve parameters that were modified by a user
action such as from `modify_cluster_parameter_group`, you can specify
*source* equal to *user*.

For more information about parameters and parameter groups, go to
[Amazon Redshift Parameter
Groups](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_describe_cluster_parameters(ParameterGroupName, Source,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_cluster_parameters_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of a cluster parameter group for which to
return details.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_cluster_parameters_:_Source">Source</code></td>
<td><p>The parameter types to return. Specify <code>user</code> to show
parameters that are different form the default. Similarly, specify
<code>engine-default</code> to show parameters that are the same as the
default parameter group.</p>
<p>Default: All parameter types returned.</p>
<p>Valid Values: <code>user</code> |
<code>engine-default</code></p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_cluster_parameters_:_MaxRecords">MaxRecords</code></td>
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
id="redshift_describe_cluster_parameters_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_cluster_parameters</code> request exceed the value
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
      Parameters = list(
        list(
          ParameterName = "string",
          ParameterValue = "string",
          Description = "string",
          Source = "string",
          DataType = "string",
          AllowedValues = "string",
          ApplyType = "static"|"dynamic",
          IsModifiable = TRUE|FALSE,
          MinimumEngineVersion = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_cluster_parameters(
      ParameterGroupName = "string",
      Source = "string",
      MaxRecords = 123,
      Marker = "string"
    )
