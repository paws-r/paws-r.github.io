<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_describe_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the API key resource details

### Description

Retrieves the API key resource details.

The API keys feature is in preview. We may add, change, or remove
features before announcing general availability. For more information,
see [Using API
keys](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html).

### Usage

    locationservice_describe_key(KeyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_describe_key_:_KeyName">KeyName</code></td>
<td><p>[required] The name of the API key resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      Description = "string",
      ExpireTime = as.POSIXct(
        "2015-01-01"
      ),
      Key = "string",
      KeyArn = "string",
      KeyName = "string",
      Restrictions = list(
        AllowActions = list(
          "string"
        ),
        AllowReferers = list(
          "string"
        ),
        AllowResources = list(
          "string"
        )
      ),
      Tags = list(
        "string"
      ),
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_key(
      KeyName = "string"
    )
