<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wafv2_list_mobile_sdk_releases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of the available releases for the mobile SDK and the specified device platform

### Description

Retrieves a list of the available releases for the mobile SDK and the
specified device platform.

The mobile SDK is not generally available. Customers who have access to
the mobile SDK can use it to establish and manage WAF tokens for use in
HTTP(S) requests from a mobile device to WAF. For more information, see
[WAF client application
integration](https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html)
in the *WAF Developer Guide*.

### Usage

    wafv2_list_mobile_sdk_releases(Platform, NextMarker, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wafv2_list_mobile_sdk_releases_:_Platform">Platform</code></td>
<td><p>[required] The device platform to retrieve the list for.</p></td>
</tr>
<tr class="even">
<td><code
id="wafv2_list_mobile_sdk_releases_:_NextMarker">NextMarker</code></td>
<td><p>When you request a list of objects with a <code>Limit</code>
setting, if the number of objects that are still available for retrieval
exceeds the limit, WAF returns a <code>NextMarker</code> value in the
response. To retrieve the next batch of objects, provide the marker from
the prior call in your next request.</p></td>
</tr>
<tr class="odd">
<td><code id="wafv2_list_mobile_sdk_releases_:_Limit">Limit</code></td>
<td><p>The maximum number of objects that you want WAF to return for
this request. If more objects are available, in the response, WAF
provides a <code>NextMarker</code> value that you can use in a
subsequent call to get the next batch of objects.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ReleaseSummaries = list(
        list(
          ReleaseVersion = "string",
          Timestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$list_mobile_sdk_releases(
      Platform = "IOS"|"ANDROID",
      NextMarker = "string",
      Limit = 123
    )
