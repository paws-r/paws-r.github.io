<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_describe_exclusions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the exclusions that are specified by the exclusions' ARNs

### Description

Describes the exclusions that are specified by the exclusions' ARNs.

### Usage

    inspector_describe_exclusions(exclusionArns, locale)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_describe_exclusions_:_exclusionArns">exclusionArns</code></td>
<td><p>[required] The list of ARNs that specify the exclusions that you
want to describe.</p></td>
</tr>
<tr class="even">
<td><code id="inspector_describe_exclusions_:_locale">locale</code></td>
<td><p>The locale into which you want to translate the exclusion's
title, description, and recommendation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      exclusions = list(
        list(
          arn = "string",
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
      failedItems = list(
        list(
          failureCode = "INVALID_ARN"|"DUPLICATE_ARN"|"ITEM_DOES_NOT_EXIST"|"ACCESS_DENIED"|"LIMIT_EXCEEDED"|"INTERNAL_ERROR",
          retryable = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_exclusions(
      exclusionArns = list(
        "string"
      ),
      locale = "EN_US"
    )
