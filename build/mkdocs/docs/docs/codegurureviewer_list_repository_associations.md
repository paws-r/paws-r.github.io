<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer_list_repository_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of RepositoryAssociationSummary objects that contain summary information about a repository association

### Description

Returns a list of
[RepositoryAssociationSummary](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html)
objects that contain summary information about a repository association.
You can filter the returned list by
[ProviderType](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-ProviderType),
[Name](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Name),
[State](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-State),
and
[Owner](https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociationSummary.html#reviewer-Type-RepositoryAssociationSummary-Owner).

### Usage

    codegurureviewer_list_repository_associations(ProviderTypes, States,
      Names, Owners, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codegurureviewer_list_repository_associations_:_ProviderTypes">ProviderTypes</code></td>
<td><p>List of provider types to use as a filter.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_repository_associations_:_States">States</code></td>
<td><p>List of repository association states to use as a filter.</p>
<p>The valid repository association states are:</p>
<ul>
<li><p><strong>Associated</strong>: The repository association is
complete.</p></li>
<li><p><strong>Associating</strong>: CodeGuru Reviewer is:</p>
<ul>
<li><p>Setting up pull request notifications. This is required for pull
requests to trigger a CodeGuru Reviewer review.</p>
<p>If your repository <code>ProviderType</code> is <code>GitHub</code>,
<code style="white-space: pre;">⁠GitHub Enterprise Server⁠</code>, or
<code>Bitbucket</code>, CodeGuru Reviewer creates webhooks in your
repository to trigger CodeGuru Reviewer reviews. If you delete these
webhooks, reviews of code in your repository cannot be
triggered.</p></li>
<li><p>Setting up source code access. This is required for CodeGuru
Reviewer to securely clone code in your repository.</p></li>
</ul></li>
<li><p><strong>Failed</strong>: The repository failed to associate or
disassociate.</p></li>
<li><p><strong>Disassociating</strong>: CodeGuru Reviewer is removing
the repository's pull request notifications and source code
access.</p></li>
<li><p><strong>Disassociated</strong>: CodeGuru Reviewer successfully
disassociated the repository. You can create a new association with this
repository if you want to review source code in it later. You can
control access to code reviews created in anassociated repository with
tags after it has been disassociated. For more information, see <a
href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html">Using
tags to control access to associated repositories</a> in the <em>Amazon
CodeGuru Reviewer User Guide</em>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_list_repository_associations_:_Names">Names</code></td>
<td><p>List of repository names to use as a filter.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_repository_associations_:_Owners">Owners</code></td>
<td><p>List of owners to use as a filter. For Amazon Web Services
CodeCommit, it is the name of the CodeCommit account that was used to
associate the repository. For other repository source providers, such as
Bitbucket and GitHub Enterprise Server, this is name of the account that
was used to associate the repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="codegurureviewer_list_repository_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of repository association results returned by
<code>list_repository_associations</code> in paginated output. When this
parameter is used, <code>list_repository_associations</code> only
returns <code>maxResults</code> results in a single page with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_repository_associations</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter is not used, <code>list_repository_associations</code>
returns up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="even">
<td><code
id="codegurureviewer_list_repository_associations_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_repository_associations</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>Treat this token as an opaque identifier that is only used to
retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RepositoryAssociationSummaries = list(
        list(
          AssociationArn = "string",
          ConnectionArn = "string",
          LastUpdatedTimeStamp = as.POSIXct(
            "2015-01-01"
          ),
          AssociationId = "string",
          Name = "string",
          Owner = "string",
          ProviderType = "CodeCommit"|"GitHub"|"Bitbucket"|"GitHubEnterpriseServer"|"S3Bucket",
          State = "Associated"|"Associating"|"Failed"|"Disassociating"|"Disassociated"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_repository_associations(
      ProviderTypes = list(
        "CodeCommit"|"GitHub"|"Bitbucket"|"GitHubEnterpriseServer"|"S3Bucket"
      ),
      States = list(
        "Associated"|"Associating"|"Failed"|"Disassociating"|"Disassociated"
      ),
      Names = list(
        "string"
      ),
      Owners = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
