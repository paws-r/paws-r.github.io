<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>firehose_tag_delivery_stream</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates tags for the specified delivery stream

### Description

Adds or updates tags for the specified delivery stream. A tag is a
key-value pair that you can define and assign to Amazon Web Services
resources. If you specify a tag that already exists, the tag value is
replaced with the value that you specify in the request. Tags are
metadata. For example, you can add friendly names and descriptions or
other types of information that can help you distinguish the delivery
stream. For more information about tags, see [Using Cost Allocation
Tags](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the *Amazon Web Services Billing and Cost Management User Guide*.

Each delivery stream can have up to 50 tags.

This operation has a limit of five transactions per second per account.

### Usage

    firehose_tag_delivery_stream(DeliveryStreamName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="firehose_tag_delivery_stream_:_DeliveryStreamName">DeliveryStreamName</code></td>
<td><p>[required] The name of the delivery stream to which you want to
add the tags.</p></td>
</tr>
<tr class="even">
<td><code id="firehose_tag_delivery_stream_:_Tags">Tags</code></td>
<td><p>[required] A set of key-value pairs to use to create the
tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_delivery_stream(
      DeliveryStreamName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
