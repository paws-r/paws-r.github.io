<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_get_on_premises_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an on-premises instance

### Description

Gets information about an on-premises instance.

### Usage

    codedeploy_get_on_premises_instance(instanceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_get_on_premises_instance_:_instanceName">instanceName</code></td>
<td><p>[required] The name of the on-premises instance about which to
get information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      instanceInfo = list(
        instanceName = "string",
        iamSessionArn = "string",
        iamUserArn = "string",
        instanceArn = "string",
        registerTime = as.POSIXct(
          "2015-01-01"
        ),
        deregisterTime = as.POSIXct(
          "2015-01-01"
        ),
        tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_on_premises_instance(
      instanceName = "string"
    )
