<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codegurureviewer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon CodeGuru Reviewer

### Description

This section provides documentation for the Amazon CodeGuru Reviewer API
operations. CodeGuru Reviewer is a service that uses program analysis
and machine learning to detect potential defects that are difficult for
developers to find and recommends fixes in your Java and Python code.

By proactively detecting and providing recommendations for addressing
code defects and implementing best practices, CodeGuru Reviewer improves
the overall quality and maintainability of your code base during the
code review stage. For more information about CodeGuru Reviewer, see the
*<span href="https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html">Amazon
CodeGuru Reviewer User Guide</span>.*

To improve the security of your CodeGuru Reviewer API calls, you can
establish a private connection between your VPC and CodeGuru Reviewer by
creating an *interface VPC endpoint*. For more information, see
[CodeGuru Reviewer and interface VPC endpoints (Amazon Web Services
PrivateLink)](https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html)
in the *Amazon CodeGuru Reviewer User Guide*.

### Usage

    codegurureviewer(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codegurureviewer_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- codegurureviewer(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td style="text-align: left;"><a href="../codegurureviewer_associate_repository/"> associate_repository </a></td>
<td style="text-align: left;">Use to associate an Amazon Web Services
CodeCommit repository or a repository managed by Amazon Web Services
CodeStar Connections with Amazon CodeGuru Reviewer</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codegurureviewer_create_code_review/"> create_code_review </a></td>
<td style="text-align: left;">Use to create a code review with a
CodeReviewType of RepositoryAnalysis</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codegurureviewer_describe_code_review/"> describe_code_review </a></td>
<td style="text-align: left;">Returns the metadata associated with the
code review along with its status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codegurureviewer_describe_recommendation_feedback/"> describe_recommendation_feedback </a></td>
<td style="text-align: left;">Describes the customer feedback for a
CodeGuru Reviewer recommendation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codegurureviewer_describe_repository_association/"> describe_repository_association </a></td>
<td style="text-align: left;">Returns a RepositoryAssociation object
that contains information about the requested repository
association</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codegurureviewer_disassociate_repository/"> disassociate_repository </a></td>
<td style="text-align: left;">Removes the association between Amazon
CodeGuru Reviewer and a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codegurureviewer_list_code_reviews/"> list_code_reviews </a></td>
<td style="text-align: left;">Lists all the code reviews that the
customer has created in the past 90 days</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codegurureviewer_list_recommendation_feedback/"> list_recommendation_feedback </a></td>
<td style="text-align: left;">Returns a list of
RecommendationFeedbackSummary objects that contain customer
recommendation feedback for all CodeGuru Reviewer users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codegurureviewer_list_recommendations/"> list_recommendations </a></td>
<td style="text-align: left;">Returns the list of all recommendations
for a completed code review</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codegurureviewer_list_repository_associations/"> list_repository_associations </a></td>
<td style="text-align: left;">Returns a list of
RepositoryAssociationSummary objects that contain summary information
about a repository association</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codegurureviewer_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns the list of tags associated with
an associated repository resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codegurureviewer_put_recommendation_feedback/"> put_recommendation_feedback </a></td>
<td style="text-align: left;">Stores customer feedback for a CodeGuru
Reviewer recommendation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codegurureviewer_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to an associated
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codegurureviewer_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes a tag from an associated
repository</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codegurureviewer()
    svc$associate_repository(
      Foo = 123
    )

    ## End(Not run)
