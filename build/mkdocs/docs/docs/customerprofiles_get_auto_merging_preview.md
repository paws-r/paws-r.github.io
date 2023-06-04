<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_auto_merging_preview</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests the auto-merging settings of your Identity Resolution Job without merging your data

### Description

Tests the auto-merging settings of your Identity Resolution Job without
merging your data. It randomly selects a sample of matching groups from
the existing matching results, and applies the automerging settings that
you provided. You can then view the number of profiles in the sample,
the number of matches, and the number of profiles identified to be
merged. This enables you to evaluate the accuracy of the attributes in
your matching list.

You can't view which profiles are matched and would be merged.

We strongly recommend you use this API to do a dry run of the
automerging process before running the Identity Resolution Job. Include
**at least** two matching attributes. If your matching list includes too
few attributes (such as only `FirstName` or only `LastName`), there may
be a large number of matches. This increases the chances of erroneous
merges.

### Usage

    customerprofiles_get_auto_merging_preview(DomainName, Consolidation,
      ConflictResolution, MinAllowedConfidenceScoreForMerging)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_auto_merging_preview_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_auto_merging_preview_:_Consolidation">Consolidation</code></td>
<td><p>[required] A list of matching attributes that represent matching
criteria.</p></td>
</tr>
<tr class="odd">
<td><code
id="customerprofiles_get_auto_merging_preview_:_ConflictResolution">ConflictResolution</code></td>
<td><p>[required] How the auto-merging process should resolve conflicts
between different profiles.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_auto_merging_preview_:_MinAllowedConfidenceScoreForMerging">MinAllowedConfidenceScoreForMerging</code></td>
<td><p>Minimum confidence score required for profiles within a matching
group to be merged during the auto-merge process.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainName = "string",
      NumberOfMatchesInSample = 123,
      NumberOfProfilesInSample = 123,
      NumberOfProfilesWillBeMerged = 123
    )

### Request syntax

    svc$get_auto_merging_preview(
      DomainName = "string",
      Consolidation = list(
        MatchingAttributesList = list(
          list(
            "string"
          )
        )
      ),
      ConflictResolution = list(
        ConflictResolvingModel = "RECENCY"|"SOURCE",
        SourceName = "string"
      ),
      MinAllowedConfidenceScoreForMerging = 123.0
    )
