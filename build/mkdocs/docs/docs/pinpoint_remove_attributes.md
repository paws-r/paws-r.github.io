<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpoint_remove_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application

### Description

Removes one or more attributes, of the same attribute type, from all the
endpoints that are associated with an application.

### Usage

    pinpoint_remove_attributes(ApplicationId, AttributeType,
      UpdateAttributesRequest)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpoint_remove_attributes_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The unique identifier for the application. This
identifier is displayed as the <strong>Project ID</strong> on the Amazon
Pinpoint console.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpoint_remove_attributes_:_AttributeType">AttributeType</code></td>
<td><p>[required] The type of attribute or attributes to remove. Valid
values are:</p>
<ul>
<li><p>endpoint-custom-attributes - Custom attributes that describe
endpoints, such as the date when an associated user opted in or out of
receiving communications from you through a specific type of
channel.</p></li>
<li><p>endpoint-metric-attributes - Custom metrics that your app reports
to Amazon Pinpoint for endpoints, such as the number of app sessions or
the number of items left in a cart.</p></li>
<li><p>endpoint-user-attributes - Custom attributes that describe users,
such as first name, last name, and age.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="pinpoint_remove_attributes_:_UpdateAttributesRequest">UpdateAttributesRequest</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AttributesResource = list(
        ApplicationId = "string",
        AttributeType = "string",
        Attributes = list(
          "string"
        )
      )
    )

### Request syntax

    svc$remove_attributes(
      ApplicationId = "string",
      AttributeType = "string",
      UpdateAttributesRequest = list(
        Blacklist = list(
          "string"
        )
      )
    )
