<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>locationservice_create_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an API key resource in your Amazon Web Services account, which lets you grant geo:GetMap\* actions for Amazon Location Map resources to the API key bearer

### Description

Creates an API key resource in your Amazon Web Services account, which
lets you grant `⁠geo:GetMap*⁠` actions for Amazon Location Map resources
to the API key bearer.

The API keys feature is in preview. We may add, change, or remove
features before announcing general availability. For more information,
see [Using API
keys](https://docs.aws.amazon.com/location/latest/developerguide/using-apikeys.html).

### Usage

    locationservice_create_key(Description, ExpireTime, KeyName, NoExpiry,
      Restrictions, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="locationservice_create_key_:_Description">Description</code></td>
<td><p>An optional description for the API key resource.</p></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_key_:_ExpireTime">ExpireTime</code></td>
<td><p>The optional timestamp for when the API key resource will expire
in <a href="https://www.iso.org/iso-8601-date-and-time-format.html">ISO
8601</a> format: <code>YYYY-MM-DDThh:mm:ss.sssZ</code>. One of
<code>NoExpiry</code> or <code>ExpireTime</code> must be set.</p></td>
</tr>
<tr class="odd">
<td><code id="locationservice_create_key_:_KeyName">KeyName</code></td>
<td><p>[required] A custom name for the API key resource.</p>
<p>Requirements:</p>
<ul>
<li><p>Contain only alphanumeric characters (A–Z, a–z, 0–9), hyphens
(-), periods (.), and underscores (_).</p></li>
<li><p>Must be a unique API key name.</p></li>
<li><p>No spaces allowed. For example,
<code>ExampleAPIKey</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="locationservice_create_key_:_NoExpiry">NoExpiry</code></td>
<td><p>Optionally set to <code>true</code> to set no expiration time for
the API key. One of <code>NoExpiry</code> or <code>ExpireTime</code>
must be set.</p></td>
</tr>
<tr class="odd">
<td><code
id="locationservice_create_key_:_Restrictions">Restrictions</code></td>
<td><p>[required] The API key restrictions for the API key
resource.</p></td>
</tr>
<tr class="even">
<td><code id="locationservice_create_key_:_Tags">Tags</code></td>
<td><p>Applies one or more tags to the map resource. A tag is a
key-value pair that helps manage, identify, search, and filter your
resources by labelling them.</p>
<p>Format: <code>"key" : "value"</code></p>
<p>Restrictions:</p>
<ul>
<li><p>Maximum 50 tags per resource</p></li>
<li><p>Each resource tag must be unique with a maximum of one
value.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8</p></li>
<li><p>Can use alphanumeric characters (A–Z, a–z, 0–9), and the
following characters: + - = . _ : / @.</p></li>
<li><p>Cannot use "aws:" as a prefix for a key.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateTime = as.POSIXct(
        "2015-01-01"
      ),
      Key = "string",
      KeyArn = "string",
      KeyName = "string"
    )

### Request syntax

    svc$create_key(
      Description = "string",
      ExpireTime = as.POSIXct(
        "2015-01-01"
      ),
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
      ),
      Tags = list(
        "string"
      )
    )
