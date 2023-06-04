<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalizeruntime_get_personalized_ranking</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Re-ranks a list of recommended items for the given user

### Description

Re-ranks a list of recommended items for the given user. The first item
in the list is deemed the most likely item to be of interest to the
user.

The solution backing the campaign must have been created using a recipe
of type PERSONALIZED\_RANKING.

### Usage

    personalizeruntime_get_personalized_ranking(campaignArn, inputList,
      userId, context, filterArn, filterValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalizeruntime_get_personalized_ranking_:_campaignArn">campaignArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the campaign to use
for generating the personalized ranking.</p></td>
</tr>
<tr class="even">
<td><code
id="personalizeruntime_get_personalized_ranking_:_inputList">inputList</code></td>
<td><p>[required] A list of items (by <code>itemId</code>) to rank. If
an item was not included in the training dataset, the item is appended
to the end of the reranked list. The maximum is 500.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalizeruntime_get_personalized_ranking_:_userId">userId</code></td>
<td><p>[required] The user for which you want the campaign to provide a
personalized ranking.</p></td>
</tr>
<tr class="even">
<td><code
id="personalizeruntime_get_personalized_ranking_:_context">context</code></td>
<td><p>The contextual metadata to use when getting recommendations.
Contextual metadata includes any interaction information that might be
relevant when getting a user's recommendations, such as the user's
current location or device type.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalizeruntime_get_personalized_ranking_:_filterArn">filterArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a filter you created to include
items or exclude items from recommendations for a given user. For more
information, see <a
href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering
Recommendations</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="personalizeruntime_get_personalized_ranking_:_filterValues">filterValues</code></td>
<td><p>The values to use when filtering recommendations. For each
placeholder parameter in your filter expression, provide the parameter
name (in matching case) as a key and the filter value(s) as the
corresponding value. Separate multiple values for one parameter with a
comma.</p>
<p>For filter expressions that use an <code>INCLUDE</code> element to
include items, you must provide values for all parameters that are
defined in the expression. For filters with expressions that use an
<code>EXCLUDE</code> element to exclude items, you can omit the
<code>filter-values</code>.In this case, Amazon Personalize doesn't use
that portion of the expression to filter recommendations.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering
Recommendations</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      personalizedRanking = list(
        list(
          itemId = "string",
          score = 123.0,
          promotionName = "string"
        )
      ),
      recommendationId = "string"
    )

### Request syntax

    svc$get_personalized_ranking(
      campaignArn = "string",
      inputList = list(
        "string"
      ),
      userId = "string",
      context = list(
        "string"
      ),
      filterArn = "string",
      filterValues = list(
        "string"
      )
    )
