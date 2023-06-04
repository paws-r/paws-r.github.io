<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_update_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a parameter group

### Description

Modifies the parameters of a parameter group. You can modify up to 20
parameters in a single request by submitting a list parameter name and
value pairs.

### Usage

    dax_update_parameter_group(ParameterGroupName, ParameterNameValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_update_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_update_parameter_group_:_ParameterNameValues">ParameterNameValues</code></td>
<td><p>[required] An array of name-value pairs for the parameters in the
group. Each element in the array represents a single parameter.</p>
<p><code>record-ttl-millis</code> and <code>query-ttl-millis</code> are
the only supported parameter names. For more details, see <a
href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.cluster-management.html#DAX.cluster-management.custom-settings.ttl">Configuring
TTL Settings</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ParameterGroup = list(
        ParameterGroupName = "string",
        Description = "string"
      )
    )

### Request syntax

    svc$update_parameter_group(
      ParameterGroupName = "string",
      ParameterNameValues = list(
        list(
          ParameterName = "string",
          ParameterValue = "string"
        )
      )
    )
