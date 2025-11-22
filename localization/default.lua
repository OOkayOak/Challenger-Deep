return {
    descriptions = {
        Other = {
            chdp_ygg_more = {
                name = 'More Loot',
                text = {
                    "And {C:attention}#1#{} more..."
                }
            },
            chdp_ygg_zero = {
                name = 'Zero Loot',
                text = {
                    "{C:red}No loot here!",
                    "{s:0.75}I eated it all..."
                }
            }
        },
    },
    misc = {
        dictionary = {
            b_rules = 'Rules',
            b_chdp_yggdrasil = 'Yggdrasil Rules',
            k_chaos_rules = 'Chaos Rules',
            chdp_debuff_hand = '#1# Hands are not allowed',
            chdp_blackjack = 'Cards in hand must add up to 21'
        },
        v_text = {
            -- EDITIONS 
            
            ch_c_no_editions = {"Cards with {C:attention}Editions{} will no longer appear"},
            ch_c_no_edition_cards = {"{C:attention}Playing cards{} can no longer have {C:attention}Editions"},
            ch_c_no_edition_jokers = {"{C:attention}Jokers{} can no longer have {C:attention}Editions"},
        
            ch_c_chdp_eban = {"{C:dark_edition}#1#{} cards will no longer appear"},
            ch_c_chdp_eban_cards = {"{C:attention}Playing cards{} can no longer be {C:dark_edition}#1#"},
            ch_c_chdp_eban_jokers = {"{C:attention}Jokers{} can no longer be {C:dark_edition}#1#"},

            -- BLIND REQUIREMENTS AND REWARDS

            ch_c_blind_scaling = {"All {C:attention}Blind requirements{} are multiplied by {C:red}X#1#"},
            ch_c_money_scaling = {"All {C:attention}Blind rewards{} are multiplied by {C:red}X#1#"},
            
            ch_c_money_total_scaling = {"{C:money}Money{} at Cash Out multiplied by {C:red}X#1#{}"},
            ch_c_mts_scaling = {"{C:red}#1#x{} added to Cash Out multiplier every Ante"},

            -- JOKER THINGS

            ch_c_minus_jokers_per_dollar = {"Hold {C:red}-1{} Joker for every {C:money}$#1#{} you have"},
            ch_c_jokers_per_dollar = {"Hold {C:blue}+1{} Joker for every {C:money}$#1#{} you have"},
            ch_c_overflow_perishable = {"If you have more {C:attention}Jokers{} than {C:attention}Joker slots{}, all Jokers become {C:red}Perishable"},
            ch_c_overflow_debuff = {"If you have more {C:attention}Jokers{} than {C:attention}Joker slots{}, all Jokers become {C:red}Debuffed"},
            ch_c_overflow_debuff_one = {"For each {C:attention}Joker{} over max {C:attention}Joker Slots{}, {C:red}debuff{} a Joker"},

            ch_c_hand_per_joker = {"For each {C:attention}Joker{}, gain {C:blue}1{} Hand"},
            ch_c_minus_discard_per_joker = {"For each {C:attention}Joker{}, lose {C:red}1{} Discard"},

            ch_c_every_joker = {"Start the run with every {C:attention}Joker{C:inactive} This will probably crash."},
            ch_c_every_joker_mod = {"Start the run with every {C:attention}Joker{} from {C:attention}#1#"},
            ch_c_random_jokers = {"Start the run with #1# {C:attention}Random Jokers"},
            
            -- STICKERS

            ch_c_chdp_enable_sticker = {"{C:attention}Jokers{} can be {C:attention}#1#"},
            ch_c_enable_all_stickers = {"Every {C:attention}Sticker{} is enabled"},
        
            ch_c_chdp_force_sticker = {"All {C:attention}Jokers{} are {C:attention}#1#"},

            ch_c_rental_rate = {"{C:attention}Rental Jokers{} cost {C:money}$#1#{} per round"},
            ch_c_rental_rate_increase = {"{C:attention}Rental Joker{} prices increase by {C:money}$#1#{} per ante"},
            ch_c_rental_rate_increase_all = {"{C:attention}Rental Joker{} prices increase by {C:money}$#1#{} every round"},

            ch_c_perishable_rounds = {"{C:attention}Perishable Jokers{} are debuffed after #1# round(s)"},

            ch_c_rentals_keep_price = {"{C:attention}Rental Jokers{} retain their price"},
            
            ch_c_cannot_sell_stickered = {"{C:attention}Jokers{} with {C:attention}Stickers{} cannot be sold"},

            -- DISABLING RANKS

            ch_c_disable_suit = {"All Cards with the {C:attention}#1#{} Suit are {C:red}debuffed"},
            ch_c_disable_rank = {"All {C:attention}#1#s{} are {C:red}debuffed"},

            -- DISABLING HANDS

            ch_c_disable_hand = {"{C:attention}#1#{} Hands are not allowed"},
            ch_c_disable_hand_containing = {"Hands containing a {C:attention}#1#{} are not allowed"},
            ch_c_whitelist_hand = {"{C:attention}#1#{} Hands are whitelisted"},
            ch_c_whitelist_info = {"{C:inactive,S=0.5}Hands that are not whitelisted are {C:red,S=0.5}Disallowed{}"},

            -- MODIFYING BLINDS AND ANTES

            ch_c_disable_small = {'No {C:attention}Small Blinds{} will appear'},
            ch_c_disable_small_ante = {'{C:attention}Small Blinds{} will no longer appear after Ante {C:attention}#1#'},
            ch_c_disable_big = {'No {C:attention}Big Blinds{} will appear'},
            ch_c_disable_big_ante = {'{C:attention}Big Blinds{} will no longer appear after Ante {C:attention}#1#'},
            ch_c_second_boss = {'An {C:attention}additional Boss Blind{} will appear'},
            ch_c_second_boss_ante = {'An {C:attention}Additional Boss Blind{} will appear each Ante, starting Ante {C:attention}#1#'},
            ch_c_chdp_third_boss = {'Two {C:attention}additional Boss Blinds{} will appear'},
            ch_c_chdp_third_boss_ante = {'Another {C:attention}Additional Boss Blind{} will appear each Ante, starting Ante {C:attention}#1#'},
            ch_c_disable_skipping = {"{C:attention}Skipping Blinds{} is {C:red}disabled"},
            ch_c_disable_skipping_ante = {"{C:attention}Skipping Blinds{} is {C:red}disabled{} after Ante {C:attention}#1#"},
            ch_c_chdp_pillar = {"{C:attention}Played Cards{} are {C:red}debuffed{} until the end of the Ante"},

            -- SHOP

            ch_c_no_vouchers = {"No {C:attention}vouchers{} will appear in the shop"},
            ch_c_reroll_cost_increase = {"Successive {C:green}Rerolls{} cost +{C:money}$#1#{} more each"},
            ch_c_all_shop_scaling = {"The price of all {C:green}Shop{} items is multiplied by {C:red}X#1#"},
            ch_c_shop_scaling_ante_increase = {"Shop price multiplier increases by {C:red}X#1#{} per ante"},
            ch_c_shop_scaling_round_increase = {"Shop price multiplier increases by {C:red}X#1#{} every round"},
            ch_c_forced_joker = {"First {C:attention}Shop Joker{} will be #1#"},
            ch_c_forced_joker_pool = {"{C:attention}Shop Jokers{} will be pulled from a {C:attention}pre-determined pool"},
            ch_c_forced_joker_all = {"Every {C:attention}Shop Joker{} will be #1#"},
            ch_c_disable_rerolls = {"{C:green}Rerolls{} are {C:red}disabled"},

            -- COMPAT - YGGDRASIL

            ch_c_chdp_xp_mult_yggdrasil = {'All {C:attention}XP{} earned is multiplied by {C:red}X#1# {C:inactive}(Yggdrasil)'},
            ch_c_chdp_no_skills_yggdrasil = {'Every {C:attention}Skill{} is {C:red}Disabled {C:inactive}(Yggdrasil)'},
            ch_c_chdp_min_items_per_blind_yggdrasil = {'Minimum {C:attention}Materials/Relics{} obtained from a Blind is {C:attention}#1#{C:inactive} (Yggdrasil)'},
            ch_c_chdp_max_items_per_blind_yggdrasil = {'Maximum {C:attention}Materials/Relics{} obtained from a Blind is {C:attention}#1#{C:inactive} (Yggdrasil)'},
            ch_c_chdp_no_loot_yggdrasil = {'No {C:attention}Loot{} will generate {C:inactive}(Yggdrasil)'},
            
            -- COMPAT - DISABLING THINGS

            ch_c_disable_partner = {'You cannot select a {C:attention}Partner{C:inactive} (Partner)'},
            ch_c_disable_charms = {'{C:attention}Charms{} will not appear {C:inactive}(Bakery)'},
            ch_c_chdp_xp_mult_grim = {'All {C:attention}XP{} earned is multiplied by {C:red}X#1# {C:inactive}(Grim)'},
            ch_c_chdp_no_learning_grim = {'Hide the {C:attention}Skill Tree{C:inactive} (Grim)'},

            -- MISCELLANEOUS

            ch_c_blackjack = {"{C:attention}Played Cards {}must add up to #1# {C:inactive, S=0.5}(Face Cards are 10, Aces 1 or 11)"},
            ch_c_win_ante = {"Win the run at {C:attention}Ante{} #1#"},
            ch_c_extra_hand_money_scaling = {"Extra {C:blue}Hand{} money is multiplied by {C:red}X#1#"},

            ch_c_chaos_engine = {"{C:red}Chaos {C:inactive,S=0.5}(Enables a random Rule every Ante)"},
            ch_c_chaos_engine_all = {"{C:red}Chaos {C:inactive,S=0.5}(Enables a random Rule every Round)"},
            ch_c_chaos_engine_skip = {"Skipping a Blind enables a random {C:red}Rule"},
            ch_c_world_machine = {"The {C:dark_edition}World Machine{} is active. {C:inactive,S=0.5}(Enables a random Rule every Round)"},
            ch_c_anaglyph = {'Creates a {C:attention}#1#{} when Boss Blind is defeated'},

            ch_c_dummy_rule = {"Dummy rule"}
        }
    }
}