<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_update_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified properties of a given API key resource

### Description

Updates the specified properties of a given API key resource.

The API keys feature is in preview. We may add, change, or remove
features before announcing general availability. For more information,
see [Using API
keys](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html).

### Usage

    locationservice_update_key(Description, ExpireTime, ForceUpdate,
      KeyName, NoExpiry, Restrictions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_update_key_:_Description">Description</code></td>
<td><p>Updates the description for the API key resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_key_:_ExpireTime">ExpireTime</code></td>
<td><p>Updates the timestamp for when the API key resource will expire
in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_key_:_ForceUpdate">ForceUpdate</code></td>
<td><p>The boolean flag to be included for updating
<code>ExpireTime</code> or <code>Restrictions</code> details.</p>
<p>Must be set to <code>true</code> to update an API key resource that
has been used in the past 7 days.</p>
<p><code>False</code> if force update is not preferred</p>
<p>Default value: <code>False</code></p></td>
</tr>
<tr class="even">
<td><code id="locationservice_update_key_:_KeyName">KeyName</code></td>
<td><p>[required] The name of the API key resource to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_update_key_:_NoExpiry">NoExpiry</code></td>
<td><p>Whether the API key should expire. Set to <code>true</code> to
set the API key to have no expiration time.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_update_key_:_Restrictions">Restrictions</code></td>
<td><p>Updates the API key restrictions for the API key
resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyArn = "string",
      KeyName = "string",
      UpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_key(
      Description = "string",
      ExpireTime = as.POSIXct(
        "2015-01-01"
      ),
      ForceUpdate = TRUE|FALSE,
      KeyName = "string",
      NoExpiry = TRUE|FALSE,
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
      )
    )
