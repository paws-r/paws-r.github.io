<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_get_intent_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about all of the versions of an intent

### Description

Gets information about all of the versions of an intent.

The `get_intent_versions` operation returns an `IntentMetadata` object
for each version of an intent. For example, if an intent has three
numbered versions, the `get_intent_versions` operation returns four
`IntentMetadata` objects in the response, one for each numbered version
and one for the `⁠$LATEST⁠` version.

The `get_intent_versions` operation always returns at least one version,
the `⁠$LATEST⁠` version.

This operation requires permissions for the `lex:GetIntentVersions`
action.

### Usage

    lexmodelbuildingservice_get_intent_versions(name, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_intent_versions_:_name">name</code></td>
<td><p>[required] The name of the intent for which versions should be
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_get_intent_versions_:_nextToken">nextToken</code></td>
<td><p>A pagination token for fetching the next page of intent versions.
If the response to this call is truncated, Amazon Lex returns a
pagination token in the response. To fetch the next page of versions,
specify the pagination token in the next request.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_get_intent_versions_:_maxResults">maxResults</code></td>
<td><p>The maximum number of intent versions to return in the response.
The default is 10.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      intents = list(
        list(
          name = "string",
          description = "string",
          lastUpdatedDate = as.POSIXct(
            "2015-01-01"
          ),
          createdDate = as.POSIXct(
            "2015-01-01"
          ),
          version = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_intent_versions(
      name = "string",
      nextToken = "string",
      maxResults = 123
    )
