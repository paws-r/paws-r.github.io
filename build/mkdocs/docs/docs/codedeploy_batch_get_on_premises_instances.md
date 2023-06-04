<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_batch_get_on_premises_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more on-premises instances

### Description

Gets information about one or more on-premises instances. The maximum
number of on-premises instances that can be returned is 25.

### Usage

    codedeploy_batch_get_on_premises_instances(instanceNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_batch_get_on_premises_instances_:_instanceNames">instanceNames</code></td>
<td><p>[required] The names of the on-premises instances about which to
get information. The maximum number of instance names you can specify is
25.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      instanceInfos = list(
        list(
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
    )

### Request syntax

    svc$batch_get_on_premises_instances(
      instanceNames = list(
        "string"
      )
    )
