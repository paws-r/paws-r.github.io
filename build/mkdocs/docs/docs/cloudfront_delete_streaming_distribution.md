<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_streaming_distribution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a streaming distribution

### Description

Delete a streaming distribution. To delete an RTMP distribution using
the CloudFront API, perform the following steps.

**To delete an RTMP distribution using the CloudFront API**:

1.  Disable the RTMP distribution.

2.  Submit a `⁠GET Streaming Distribution Config⁠` request to get the
    current configuration and the `Etag` header for the distribution.

3.  Update the XML document that was returned in the response to your
    `⁠GET Streaming Distribution Config⁠` request to change the value of
    `Enabled` to `false`.

4.  Submit a `⁠PUT Streaming Distribution Config⁠` request to update the
    configuration for your distribution. In the request body, include
    the XML document that you updated in Step 3. Then set the value of
    the HTTP `If-Match` header to the value of the `ETag` header that
    CloudFront returned when you submitted the
    `⁠GET Streaming Distribution Config⁠` request in Step 2.

5.  Review the response to the `⁠PUT Streaming Distribution Config⁠`
    request to confirm that the distribution was successfully disabled.

6.  Submit a `⁠GET Streaming Distribution Config⁠` request to confirm that
    your changes have propagated. When propagation is complete, the
    value of `Status` is `Deployed`.

7.  Submit a `⁠DELETE Streaming Distribution⁠` request. Set the value of
    the HTTP `If-Match` header to the value of the `ETag` header that
    CloudFront returned when you submitted the
    `⁠GET Streaming Distribution Config⁠` request in Step 2.

8.  Review the response to your `⁠DELETE Streaming Distribution⁠` request
    to confirm that the distribution was successfully deleted.

For information about deleting a distribution using the CloudFront
console, see [Deleting a
Distribution](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_delete_streaming_distribution(Id, IfMatch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_streaming_distribution_:_Id">Id</code></td>
<td><p>[required] The distribution ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_streaming_distribution_:_IfMatch">IfMatch</code></td>
<td><p>The value of the <code>ETag</code> header that you received when
you disabled the streaming distribution. For example:
<code>E2QWRUHAPOMQZL</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_streaming_distribution(
      Id = "string",
      IfMatch = "string"
    )
