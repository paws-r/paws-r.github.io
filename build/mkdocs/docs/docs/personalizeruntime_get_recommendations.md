<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalizeruntime_get_recommendations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of recommended items

### Description

Returns a list of recommended items. For campaigns, the campaign's
Amazon Resource Name (ARN) is required and the required user and item
input depends on the recipe type used to create the solution backing the
campaign as follows:

-   USER\_PERSONALIZATION - `userId` required, `itemId` not used

-   RELATED\_ITEMS - `itemId` required, `userId` not used

Campaigns that are backed by a solution created using a recipe of type
PERSONALIZED\_RANKING use the API.

For recommenders, the recommender's ARN is required and the required
item and user input depends on the use case (domain-based recipe)
backing the recommender. For information on use case requirements see
[Choosing recommender use
cases](https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html).

### Usage

    personalizeruntime_get_recommendations(campaignArn, itemId, userId,
      numResults, context, filterArn, filterValues, recommenderArn,
      promotions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalizeruntime_get_recommendations_:_campaignArn">campaignArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the campaign to use for getting
recommendations.</p></td>
</tr>
<tr class="even">
<td><code
id="personalizeruntime_get_recommendations_:_itemId">itemId</code></td>
<td><p>The item ID to provide recommendations for.</p>
<p>Required for <code>RELATED_ITEMS</code> recipe type.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalizeruntime_get_recommendations_:_userId">userId</code></td>
<td><p>The user ID to provide recommendations for.</p>
<p>Required for <code>USER_PERSONALIZATION</code> recipe type.</p></td>
</tr>
<tr class="even">
<td><code
id="personalizeruntime_get_recommendations_:_numResults">numResults</code></td>
<td><p>The number of results to return. The default is 25. The maximum
is 500.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalizeruntime_get_recommendations_:_context">context</code></td>
<td><p>The contextual metadata to use when getting recommendations.
Contextual metadata includes any interaction information that might be
relevant when getting a user's recommendations, such as the user's
current location or device type.</p></td>
</tr>
<tr class="even">
<td><code
id="personalizeruntime_get_recommendations_:_filterArn">filterArn</code></td>
<td><p>The ARN of the filter to apply to the returned recommendations.
For more information, see <a
href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering
Recommendations</a>.</p>
<p>When using this parameter, be sure the filter resource is
<code>ACTIVE</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalizeruntime_get_recommendations_:_filterValues">filterValues</code></td>
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
recommendations and user segments</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="personalizeruntime_get_recommendations_:_recommenderArn">recommenderArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the recommender to use to get
recommendations. Provide a recommender ARN if you created a Domain
dataset group with a recommender for a domain use case.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalizeruntime_get_recommendations_:_promotions">promotions</code></td>
<td><p>The promotions to apply to the recommendation request. A
promotion defines additional business rules that apply to a configurable
subset of recommended items.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      itemList = list(
        list(
          itemId = "string",
          score = 123.0,
          promotionName = "string"
        )
      ),
      recommendationId = "string"
    )

### Request syntax

    svc$get_recommendations(
      campaignArn = "string",
      itemId = "string",
      userId = "string",
      numResults = 123,
      context = list(
        "string"
      ),
      filterArn = "string",
      filterValues = list(
        "string"
      ),
      recommenderArn = "string",
      promotions = list(
        list(
          name = "string",
          percentPromotedItems = 123,
          filterArn = "string",
          filterValues = list(
            "string"
          )
        )
      )
    )
