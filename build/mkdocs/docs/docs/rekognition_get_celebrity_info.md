<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rekognition_get_celebrity_info</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the name and additional information about a celebrity based on their Amazon Rekognition ID

### Description

Gets the name and additional information about a celebrity based on
their Amazon Rekognition ID. The additional information is returned as
an array of URLs. If there is no additional information about the
celebrity, this list is empty.

For more information, see Getting information about a celebrity in the
Amazon Rekognition Developer Guide.

This operation requires permissions to perform the
`rekognition:GetCelebrityInfo` action.

### Usage

    rekognition_get_celebrity_info(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="rekognition_get_celebrity_info_:_Id">Id</code></td>
<td><p>[required] The ID for the celebrity. You get the celebrity ID
from a call to the <code>recognize_celebrities</code> operation, which
recognizes celebrities in an image.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Urls = list(
        "string"
      ),
      Name = "string",
      KnownGender = list(
        Type = "Male"|"Female"|"Nonbinary"|"Unlisted"
      )
    )

### Request syntax

    svc$get_celebrity_info(
      Id = "string"
    )
