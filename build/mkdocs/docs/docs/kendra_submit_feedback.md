<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_submit_feedback</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables you to provide feedback to Amazon Kendra to improve the performance of your index

### Description

Enables you to provide feedback to Amazon Kendra to improve the
performance of your index.

`submit_feedback` is currently not supported in the Amazon Web Services
GovCloud (US-West) region.

### Usage

    kendra_submit_feedback(IndexId, QueryId, ClickFeedbackItems,
      RelevanceFeedbackItems)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_submit_feedback_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index that was queried.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_submit_feedback_:_QueryId">QueryId</code></td>
<td><p>[required] The identifier of the specific query for which you are
submitting feedback. The query ID is returned in the response to the
<code>query</code> API.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_submit_feedback_:_ClickFeedbackItems">ClickFeedbackItems</code></td>
<td><p>Tells Amazon Kendra that a particular search result link was
chosen by the user.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_submit_feedback_:_RelevanceFeedbackItems">RelevanceFeedbackItems</code></td>
<td><p>Provides Amazon Kendra with relevant or not relevant feedback for
whether a particular item was relevant to the search.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$submit_feedback(
      IndexId = "string",
      QueryId = "string",
      ClickFeedbackItems = list(
        list(
          ResultId = "string",
          ClickTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      RelevanceFeedbackItems = list(
        list(
          ResultId = "string",
          RelevanceValue = "RELEVANT"|"NOT_RELEVANT"
        )
      )
    )
