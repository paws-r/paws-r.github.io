<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_get_exclusions_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token

### Description

Retrieves the exclusions preview (a list of ExclusionPreview objects)
specified by the preview token. You can obtain the preview token by
running the CreateExclusionsPreview API.

### Usage

    inspector_get_exclusions_preview(assessmentTemplateArn, previewToken,
      nextToken, maxResults, locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_get_exclusions_preview_:_assessmentTemplateArn">assessmentTemplateArn</code></td>
<td><p>[required] The ARN that specifies the assessment template for
which the exclusions preview was requested.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_get_exclusions_preview_:_previewToken">previewToken</code></td>
<td><p>[required] The unique identifier associated of the exclusions
preview.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_get_exclusions_preview_:_nextToken">nextToken</code></td>
<td><p>You can use this parameter when paginating results. Set the value
of this parameter to null on your first call to the
GetExclusionsPreviewRequest action. Subsequent calls to the action fill
nextToken in the request with the value of nextToken from the previous
response to continue listing data.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_get_exclusions_preview_:_maxResults">maxResults</code></td>
<td><p>You can use this parameter to indicate the maximum number of
items you want in the response. The default value is 100. The maximum
value is 500.</p></td>
</tr>
<tr class="odd">
<td><code
id="inspector_get_exclusions_preview_:_locale">locale</code></td>
<td><p>The locale into which you want to translate the exclusion's
title, description, and recommendation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      previewStatus = "WORK_IN_PROGRESS"|"COMPLETED",
      exclusionPreviews = list(
        list(
          title = "string",
          description = "string",
          recommendation = "string",
          scopes = list(
            list(
              key = "INSTANCE_ID"|"RULES_PACKAGE_ARN",
              value = "string"
            )
          ),
          attributes = list(
            list(
              key = "string",
              value = "string"
            )
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_exclusions_preview(
      assessmentTemplateArn = "string",
      previewToken = "string",
      nextToken = "string",
      maxResults = 123,
      locale = "EN_US"
    )
