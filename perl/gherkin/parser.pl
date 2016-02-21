package Gherkin::Generated::Parser;

# This file is generated. Do not edit! Edit gherkin-perl.razor instead.

use Moose;
extends 'Gherkin::Parser';

our @RULE_TYPES = [
    'None',
    '_EOF',                    # #EOF
    '_Empty',                  # #Empty
    '_Comment',                # #Comment
    '_TagLine',                # #TagLine
    '_FeatureLine',            # #FeatureLine
    '_BackgroundLine',         # #BackgroundLine
    '_ScenarioLine',           # #ScenarioLine
    '_ScenarioOutlineLine',    # #ScenarioOutlineLine
    '_ExamplesLine',           # #ExamplesLine
    '_StepLine',               # #StepLine
    '_DocStringSeparator',     # #DocStringSeparator
    '_TableRow',               # #TableRow
    '_Language',               # #Language
    '_Other',                  # #Other
    'Feature',    # Feature! := Feature_Header Background? Scenario_Definition*
    'Feature_Header'
    ,    # Feature_Header! := #Language? Tags? #FeatureLine Feature_Description
    'Background'
    ,    # Background! := #BackgroundLine Background_Description Scenario_Step*
    'Scenario_Definition'
    ,           # Scenario_Definition! := Tags? (Scenario | ScenarioOutline)
    'Scenario', # Scenario! := #ScenarioLine Scenario_Description Scenario_Step*
    'ScenarioOutline'
    , # ScenarioOutline! := #ScenarioOutlineLine ScenarioOutline_Description ScenarioOutline_Step* Examples_Definition+
    'Examples_Definition'
    , # Examples_Definition! [#Empty|#Comment|#TagLine-&gt;#ExamplesLine] := Tags? Examples
    'Examples'
    ,    # Examples! := #ExamplesLine Examples_Description #TableRow #TableRow+
    'Scenario_Step',           # Scenario_Step := Step
    'ScenarioOutline_Step',    # ScenarioOutline_Step := Step
    'Step',                    # Step! := #StepLine Step_Arg?
    'Step_Arg',                # Step_Arg := (DataTable | DocString)
    'DataTable',               # DataTable! := #TableRow+
    'DocString', # DocString! := #DocStringSeparator #Other* #DocStringSeparator
    'Tags',      # Tags! := #TagLine+
    'Feature_Description',       # Feature_Description := Description_Helper
    'Background_Description',    # Background_Description := Description_Helper
    'Scenario_Description',      # Scenario_Description := Description_Helper
    'ScenarioOutline_Description'
    ,                        # ScenarioOutline_Description := Description_Helper
    'Examples_Description',  # Examples_Description := Description_Helper
    'Description_Helper', # Description_Helper := #Empty* Description? #Comment*
    'Description',        # Description! := #Other+
];

our %states_to_match_names = (
    0  => "match_token_at_0",
    1  => "match_token_at_1",
    2  => "match_token_at_2",
    3  => "match_token_at_3",
    4  => "match_token_at_4",
    5  => "match_token_at_5",
    6  => "match_token_at_6",
    7  => "match_token_at_7",
    8  => "match_token_at_8",
    9  => "match_token_at_9",
    10 => "match_token_at_10",
    11 => "match_token_at_11",
    12 => "match_token_at_12",
    13 => "match_token_at_13",
    14 => "match_token_at_14",
    15 => "match_token_at_15",
    16 => "match_token_at_16",
    17 => "match_token_at_17",
    18 => "match_token_at_18",
    19 => "match_token_at_19",
    20 => "match_token_at_20",
    21 => "match_token_at_21",
    22 => "match_token_at_22",
    23 => "match_token_at_23",
    24 => "match_token_at_24",
    25 => "match_token_at_25",
    26 => "match_token_at_26",
    27 => "match_token_at_27",
    29 => "match_token_at_29",
    30 => "match_token_at_30",
    31 => "match_token_at_31",
    32 => "match_token_at_32",
    33 => "match_token_at_33",
    34 => "match_token_at_34",
);

sub match_token {
    my ( $self, $state, $token, $context ) = @_;
    my $method_name = $states_to_match_names{$state}
      || die "Unknown state: $state";
    $self->$method_name( $state, $context );
}

sub match_EOF {
    my ( $self, $context, $token ) = @_;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_EOF
    );
}

sub match_Empty {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_Empty
    );
}

sub match_Comment {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_Comment
    );
}

sub match_TagLine {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_TagLine
    );
}

sub match_FeatureLine {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_FeatureLine
    );
}

sub match_BackgroundLine {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_BackgroundLine
    );
}

sub match_ScenarioLine {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_ScenarioLine
    );
}

sub match_ScenarioOutlineLine {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_ScenarioOutlineLine
    );
}

sub match_ExamplesLine {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_ExamplesLine
    );
}

sub match_StepLine {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_StepLine
    );
}

sub match_DocStringSeparator {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_DocStringSeparator
    );
}

sub match_TableRow {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_TableRow
    );
}

sub match_Language {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_Language
    );
}

sub match_Other {
    my ( $self, $context, $token ) = @_;
    return if $token->is_eof;
    return $self->handle_external_error(
        $context,
        0,    # Default return value
        $token,
        $context->token_matcher->match_Other
    );
}

# Start
sub match_token_at_0 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_Language( $context, $token ) ) {
        $self->start_rule( $context, 'Feature_Header' );
        $self->build( $context, $token );
        return 1;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->start_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 2;
    }
    if ( $self->match_FeatureLine( $context, $token ) ) {
        $self->start_rule( $context, 'Feature_Header' );
        $self->build( $context, $token );
        return 3;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 0;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 0;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#Language", "#TagLine", "#FeatureLine", "#Comment", "#Empty" ],    #"
        "State: 0 - Start",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 0;
}

# Feature:0>Feature_Header:0>#Language:0
sub match_token_at_1 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 2;
    }
    if ( $self->match_FeatureLine( $context, $token ) ) {
        $self->build( $context, $token );
        return 3;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 1;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 1;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#TagLine", "#FeatureLine", "#Comment", "#Empty" ],    #"
        "State: 1 - Feature:0>Feature_Header:0>#Language:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 1;
}

# Feature:0>Feature_Header:1>Tags:0>#TagLine:0
sub match_token_at_2 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->build( $context, $token );
        return 2;
    }
    if ( $self->match_FeatureLine( $context, $token ) ) {
        $self->end_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 3;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 2;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 2;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#TagLine", "#FeatureLine", "#Comment", "#Empty" ],    #"
        "State: 2 - Feature:0>Feature_Header:1>Tags:0>#TagLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 2;
}

# Feature:0>Feature_Header:2>#FeatureLine:0
sub match_token_at_3 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 3;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 5;
    }
    if ( $self->match_BackgroundLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 6;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->start_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 4;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",                 "#Empty",
            "#Comment",             "#BackgroundLine",
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Other"
        ],    #"
        "State: 3 - Feature:0>Feature_Header:2>#FeatureLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 3;
}

# Feature:0>Feature_Header:3>Feature_Description:0>Description_Helper:1>Description:0>#Other:0
sub match_token_at_4 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Feature_Header' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 5;
    }
    if ( $self->match_BackgroundLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 6;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 4;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",            "#Comment",
            "#BackgroundLine", "#TagLine",
            "#ScenarioLine",   "#ScenarioOutlineLine",
            "#Other"
        ],    #"
"State: 4 - Feature:0>Feature_Header:3>Feature_Description:0>Description_Helper:1>Description:0>#Other:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 4;
}

# Feature:0>Feature_Header:3>Feature_Description:0>Description_Helper:2>#Comment:0
sub match_token_at_5 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 5;
    }
    if ( $self->match_BackgroundLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 6;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Feature_Header' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 5;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",            "#Comment",
            "#BackgroundLine", "#TagLine",
            "#ScenarioLine",   "#ScenarioOutlineLine",
            "#Empty"
        ],    #"
"State: 5 - Feature:0>Feature_Header:3>Feature_Description:0>Description_Helper:2>#Comment:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 5;
}

# Feature:1>Background:0>#BackgroundLine:0
sub match_token_at_6 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 6;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 8;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 9;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->start_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 7;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",                 "#Empty",
            "#Comment",             "#StepLine",
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Other"
        ],    #"
        "State: 6 - Feature:1>Background:0>#BackgroundLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 6;
}

# Feature:1>Background:1>Background_Description:0>Description_Helper:1>Description:0>#Other:0
sub match_token_at_7 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 8;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 9;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 7;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",          "#Comment",
            "#StepLine",     "#TagLine",
            "#ScenarioLine", "#ScenarioOutlineLine",
            "#Other"
        ],    #"
"State: 7 - Feature:1>Background:1>Background_Description:0>Description_Helper:1>Description:0>#Other:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 7;
}

# Feature:1>Background:1>Background_Description:0>Description_Helper:2>#Comment:0
sub match_token_at_8 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 8;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 9;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 8;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",          "#Comment",
            "#StepLine",     "#TagLine",
            "#ScenarioLine", "#ScenarioOutlineLine",
            "#Empty"
        ],    #"
"State: 8 - Feature:1>Background:1>Background_Description:0>Description_Helper:2>#Comment:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 8;
}

# Feature:1>Background:2>Scenario_Step:0>Step:0>#StepLine:0
sub match_token_at_9 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->start_rule( $context, 'DataTable' );
        $self->build( $context, $token );
        return 10;
    }
    if ( $self->match_DocStringSeparator( $context, $token ) ) {
        $self->start_rule( $context, 'DocString' );
        $self->build( $context, $token );
        return 33;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 9;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 9;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 9;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",                 "#TableRow",
            "#DocStringSeparator",  "#StepLine",
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Comment",
            "#Empty"
        ],    #"
        "State: 9 - Feature:1>Background:2>Scenario_Step:0>Step:0>#StepLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 9;
}

# Feature:1>Background:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:0>DataTable:0>#TableRow:0
sub match_token_at_10 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->build( $context, $token );
        return 10;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 9;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 10;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 10;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",          "#TableRow",
            "#StepLine",     "#TagLine",
            "#ScenarioLine", "#ScenarioOutlineLine",
            "#Comment",      "#Empty"
        ],    #"
"State: 10 - Feature:1>Background:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:0>DataTable:0>#TableRow:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 10;
}

# Feature:2>Scenario_Definition:0>Tags:0>#TagLine:0
sub match_token_at_11 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Tags' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Tags' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 11;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Comment",
            "#Empty"
        ],    #"
        "State: 11 - Feature:2>Scenario_Definition:0>Tags:0>#TagLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 11;
}

# Feature:2>Scenario_Definition:1>__alt0:0>Scenario:0>#ScenarioLine:0
sub match_token_at_12 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 14;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 15;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->start_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 13;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",                 "#Empty",
            "#Comment",             "#StepLine",
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Other"
        ],    #"
"State: 12 - Feature:2>Scenario_Definition:1>__alt0:0>Scenario:0>#ScenarioLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 12;
}

# Feature:2>Scenario_Definition:1>__alt0:0>Scenario:1>Scenario_Description:0>Description_Helper:1>Description:0>#Other:0
sub match_token_at_13 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 14;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 15;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 13;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",          "#Comment",
            "#StepLine",     "#TagLine",
            "#ScenarioLine", "#ScenarioOutlineLine",
            "#Other"
        ],    #"
"State: 13 - Feature:2>Scenario_Definition:1>__alt0:0>Scenario:1>Scenario_Description:0>Description_Helper:1>Description:0>#Other:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 13;
}

# Feature:2>Scenario_Definition:1>__alt0:0>Scenario:1>Scenario_Description:0>Description_Helper:2>#Comment:0
sub match_token_at_14 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 14;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 15;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 14;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",          "#Comment",
            "#StepLine",     "#TagLine",
            "#ScenarioLine", "#ScenarioOutlineLine",
            "#Empty"
        ],    #"
"State: 14 - Feature:2>Scenario_Definition:1>__alt0:0>Scenario:1>Scenario_Description:0>Description_Helper:2>#Comment:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 14;
}

# Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:0>#StepLine:0
sub match_token_at_15 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->start_rule( $context, 'DataTable' );
        $self->build( $context, $token );
        return 16;
    }
    if ( $self->match_DocStringSeparator( $context, $token ) ) {
        $self->start_rule( $context, 'DocString' );
        $self->build( $context, $token );
        return 31;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 15;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 15;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 15;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",                 "#TableRow",
            "#DocStringSeparator",  "#StepLine",
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Comment",
            "#Empty"
        ],    #"
"State: 15 - Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:0>#StepLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 15;
}

# Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:0>DataTable:0>#TableRow:0
sub match_token_at_16 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->build( $context, $token );
        return 16;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 15;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 16;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 16;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",          "#TableRow",
            "#StepLine",     "#TagLine",
            "#ScenarioLine", "#ScenarioOutlineLine",
            "#Comment",      "#Empty"
        ],    #"
"State: 16 - Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:0>DataTable:0>#TableRow:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 16;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:0>#ScenarioOutlineLine:0
sub match_token_at_17 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 19;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 20;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->start_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 18;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#Empty",        "#Comment", "#StepLine", "#TagLine",
            "#ExamplesLine", "#Other"
        ],    #"
"State: 17 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:0>#ScenarioOutlineLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 17;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:1>ScenarioOutline_Description:0>Description_Helper:1>Description:0>#Other:0
sub match_token_at_18 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_Comment( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 19;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 20;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 18;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#Comment", "#StepLine", "#TagLine", "#ExamplesLine", "#Other" ],   #"
"State: 18 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:1>ScenarioOutline_Description:0>Description_Helper:1>Description:0>#Other:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 18;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:1>ScenarioOutline_Description:0>Description_Helper:2>#Comment:0
sub match_token_at_19 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 19;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 20;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 19;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#Comment", "#StepLine", "#TagLine", "#ExamplesLine", "#Empty" ],   #"
"State: 19 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:1>ScenarioOutline_Description:0>Description_Helper:2>#Comment:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 19;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:0>#StepLine:0
sub match_token_at_20 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->start_rule( $context, 'DataTable' );
        $self->build( $context, $token );
        return 21;
    }
    if ( $self->match_DocStringSeparator( $context, $token ) ) {
        $self->start_rule( $context, 'DocString' );
        $self->build( $context, $token );
        return 29;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 20;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 20;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 20;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#TableRow",     "#DocStringSeparator",
            "#StepLine",     "#TagLine",
            "#ExamplesLine", "#Comment",
            "#Empty"
        ],    #"
"State: 20 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:0>#StepLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 20;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:1>Step_Arg:0>__alt1:0>DataTable:0>#TableRow:0
sub match_token_at_21 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->build( $context, $token );
        return 21;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 20;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->end_rule( $context, 'DataTable' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 21;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 21;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#TableRow", "#StepLine", "#TagLine", "#ExamplesLine",
            "#Comment",  "#Empty"
        ],    #"
"State: 21 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:1>Step_Arg:0>__alt1:0>DataTable:0>#TableRow:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 21;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:0>Tags:0>#TagLine:0
sub match_token_at_22 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->end_rule( $context, 'Tags' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 22;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#TagLine", "#ExamplesLine", "#Comment", "#Empty" ],    #"
"State: 22 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:0>Tags:0>#TagLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 22;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:0>#ExamplesLine:0
sub match_token_at_23 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 25;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->build( $context, $token );
        return 26;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->start_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 24;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#Empty", "#Comment", "#TableRow", "#Other" ],    #"
"State: 23 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:0>#ExamplesLine:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 23;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:1>Examples_Description:0>Description_Helper:1>Description:0>#Other:0
sub match_token_at_24 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_Comment( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 25;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->end_rule( $context, 'Description' );
        $self->build( $context, $token );
        return 26;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 24;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#Comment", "#TableRow", "#Other" ],    #"
"State: 24 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:1>Examples_Description:0>Description_Helper:1>Description:0>#Other:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 24;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:1>Examples_Description:0>Description_Helper:2>#Comment:0
sub match_token_at_25 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 25;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->build( $context, $token );
        return 26;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 25;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#Comment", "#TableRow", "#Empty" ],    #"
"State: 25 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:1>Examples_Description:0>Description_Helper:2>#Comment:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 25;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:2>#TableRow:0
sub match_token_at_26 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->build( $context, $token );
        return 27;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 26;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 26;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#TableRow", "#Comment", "#Empty" ],    #"
"State: 26 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:2>#TableRow:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 26;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:3>#TableRow:0
sub match_token_at_27 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'Examples' );
        $self->end_rule( $context, 'Examples_Definition' );
        $self->end_rule( $context, 'ScenarioOutline' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_TableRow( $context, $token ) ) {
        $self->build( $context, $token );
        return 27;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        if ( $self->lookahead_0( $context, $token ) ) {
            $self->end_rule( $context, 'Examples' );
            $self->end_rule( $context, 'Examples_Definition' );
            $self->start_rule( $context, 'Examples_Definition' );
            $self->start_rule( $context, 'Tags' );
            $self->build( $context, $token );
            return 22;
        }
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'Examples' );
        $self->end_rule( $context, 'Examples_Definition' );
        $self->end_rule( $context, 'ScenarioOutline' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->end_rule( $context, 'Examples' );
        $self->end_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'Examples' );
        $self->end_rule( $context, 'Examples_Definition' );
        $self->end_rule( $context, 'ScenarioOutline' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'Examples' );
        $self->end_rule( $context, 'Examples_Definition' );
        $self->end_rule( $context, 'ScenarioOutline' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 27;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 27;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",          "#TableRow",
            "#TagLine",      "#ExamplesLine",
            "#ScenarioLine", "#ScenarioOutlineLine",
            "#Comment",      "#Empty"
        ],    #"
"State: 27 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:3>Examples_Definition:1>Examples:3>#TableRow:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 27;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:0>#DocStringSeparator:0
sub match_token_at_29 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_DocStringSeparator( $context, $token ) ) {
        $self->build( $context, $token );
        return 30;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 29;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#DocStringSeparator", "#Other" ],    #"
"State: 29 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:0>#DocStringSeparator:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 29;
}

# Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:2>#DocStringSeparator:0
sub match_token_at_30 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 20;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 22;
    }
    if ( $self->match_ExamplesLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Examples_Definition' );
        $self->start_rule( $context, 'Examples' );
        $self->build( $context, $token );
        return 23;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 30;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 30;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#StepLine", "#TagLine", "#ExamplesLine", "#Comment", "#Empty" ],   #"
"State: 30 - Feature:2>Scenario_Definition:1>__alt0:1>ScenarioOutline:2>ScenarioOutline_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:2>#DocStringSeparator:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 30;
}

# Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:0>#DocStringSeparator:0
sub match_token_at_31 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_DocStringSeparator( $context, $token ) ) {
        $self->build( $context, $token );
        return 32;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 31;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#DocStringSeparator", "#Other" ],    #"
"State: 31 - Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:0>#DocStringSeparator:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 31;
}

# Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:2>#DocStringSeparator:0
sub match_token_at_32 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 15;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Scenario' );
        $self->end_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 32;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 32;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",                 "#StepLine",
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Comment",
            "#Empty"
        ],    #"
"State: 32 - Feature:2>Scenario_Definition:1>__alt0:0>Scenario:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:2>#DocStringSeparator:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 32;
}

# Feature:1>Background:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:0>#DocStringSeparator:0
sub match_token_at_33 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_DocStringSeparator( $context, $token ) ) {
        $self->build( $context, $token );
        return 34;
    }
    if ( $self->match_Other( $context, $token ) ) {
        $self->build( $context, $token );
        return 33;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [ "#DocStringSeparator", "#Other" ],    #"
"State: 33 - Feature:1>Background:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:0>#DocStringSeparator:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 33;
}

# Feature:1>Background:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:2>#DocStringSeparator:0
sub match_token_at_34 {
    my ( $self, $token, $context ) = @_;
    if ( $self->match_EOF( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->build( $context, $token );
        return 28;
    }
    if ( $self->match_StepLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->start_rule( $context, 'Step' );
        $self->build( $context, $token );
        return 9;
    }
    if ( $self->match_TagLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Tags' );
        $self->build( $context, $token );
        return 11;
    }
    if ( $self->match_ScenarioLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'Scenario' );
        $self->build( $context, $token );
        return 12;
    }
    if ( $self->match_ScenarioOutlineLine( $context, $token ) ) {
        $self->end_rule( $context, 'DocString' );
        $self->end_rule( $context, 'Step' );
        $self->end_rule( $context, 'Background' );
        $self->start_rule( $context, 'Scenario_Definition' );
        $self->start_rule( $context, 'ScenarioOutline' );
        $self->build( $context, $token );
        return 17;
    }
    if ( $self->match_Comment( $context, $token ) ) {
        $self->build( $context, $token );
        return 34;
    }
    if ( $self->match_Empty( $context, $token ) ) {
        $self->build( $context, $token );
        return 34;
    }

    $token->detach;

    # Create the appropriate error
    my $error_class = "Gherkin::Exceptions::"
      . ( $token->is_eof ? 'UnexpectedEOF' : 'UnexpectedToken' );

    my $error = $error_class->new(
        $token,
        [
            "#EOF",                 "#StepLine",
            "#TagLine",             "#ScenarioLine",
            "#ScenarioOutlineLine", "#Comment",
            "#Empty"
        ],    #"
"State: 34 - Feature:1>Background:2>Scenario_Step:0>Step:1>Step_Arg:0>__alt1:1>DocString:2>#DocStringSeparator:0",
    );

    # Throw or add it to the queue
    die $error if $self->stop_at_first_error;
    $self->add_error($error);

    return 34;
}

sub lookahead_0 {
    my ( $self, $context, $current_token ) = @_;

    $current_token->detach();

    my $token;
    my @queue;
    my $match = 0;

    while (1) {
        $token = $self->read_token($context);
        $token->detach;
        push( @queue, $token );

        if ( $self->match_ExamplesLine( $context, $token ) || 0 ) {
            $match = 1;
            last;
        }

        if (
            !(
                   $self->match_Empty( $context, $token )
                || $self->match_Comment( $context, $token )
                || $self->match_TagLine( $context, $token )
                || 0
            )
          )
        {
            last;
        }

    }

    push( @{ $context->{'token_queue'} }, @queue );

    return $match;
}
1;
