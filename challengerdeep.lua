SMODS.Atlas {
    key = "chdpstickers",
    path = "stickers.png",
    px = 71,
    py = 95
  }

SMODS.Atlas{
    key = "chdpshrouded",
    path = "deckatlas.png",
    px = 71,
    py = 95
}

to_big = to_big or function(x)
    return x
end

to_number = to_number or function(x)
    return x
end

local Backapply_to_run_Ref = Back.apply_to_run
function Back:apply_to_run()
    Backapply_to_run_Ref(self)

    --ALL EDITIONS

    G.GAME.modifiers.no_edition_cards = false --no edition cards
    G.GAME.modifiers.no_edition_jokers = false --no edition jokers

    --BASE GAME EDITIONS

    G.GAME.modifiers.no_foil_cards = false --no foil cards 
    G.GAME.modifiers.no_foil_jokers = false --no foil jokers

    G.GAME.modifiers.no_holo_cards = false --no holo cards 
    G.GAME.modifiers.no_holo_jokers = false --no holo jokers

    G.GAME.modifiers.no_negative_jokers = false --no negative jokers

    G.GAME.modifiers.no_polychrome_cards = false --no polychrome cards 
    G.GAME.modifiers.no_polychrome_jokers = false --no polychrome jokers

    --BUNCO EDITIONS

    G.GAME.modifiers.no_fluorescent_cards = false --no fluorescent cards 
    G.GAME.modifiers.no_fluorescent_jokers = false --no fluorescent jokers

    G.GAME.modifiers.no_glitter_cards = false --no glitter cards 
    G.GAME.modifiers.no_glitter_jokers = false --no glitter jokers

    --CRYPTID EDITIONS

    G.GAME.modifiers.no_mosaic_cards = false
    G.GAME.modifiers.no_mosaic_jokers = false

    G.GAME.modifiers.no_glitched_cards = false
    G.GAME.modifiers.no_glitched_jokers = false

    G.GAME.modifiers.no_oversat_cards = false
    G.GAME.modifiers.no_oversat_jokers = false

    G.GAME.modifiers.no_gold_cards = false
    G.GAME.modifiers.no_gold_jokers = false

    G.GAME.modifiers.no_glass_cards = false
    G.GAME.modifiers.no_glass_jokers = false

    G.GAME.modifiers.no_blur_cards = false
    G.GAME.modifiers.no_blur_jokers = false

    G.GAME.modifiers.no_astral_cards = false
    G.GAME.modifiers.no_astral_jokers = false

    G.GAME.modifiers.no_m_cards = false
    G.GAME.modifiers.no_m_jokers = false

    --BLINDS

    G.GAME.modifiers.money_scaling = 1
    G.GAME.modifiers.money_total_scaling = 1

    G.GAME.modifiers.mts_scaling = 0

    -- HANDS

    G.GAME.modifiers.disable_hand = {}
    G.GAME.modifiers.disable_hand_containing = {}

    G.GAME.modifiers.chdp_blackjack = 0

    --JOKER FUN

    G.GAME.modifiers.minus_jokers_per_dollar = 0
    G.GAME.modifiers.jokers_per_dollar = 0
    G.GAME.modifiers.overflow_perishable = false
    G.GAME.modifiers.overflow_debuff = false
    G.GAME.modifiers.overflow_debuff_one = false

    G.GAME.joker_overflow = false
    G.GAME.joker_overflow_size = 0
    G.GAME.old_joker_overflow_size = 0

    G.GAME.modifiers.hand_per_joker = false
    G.GAME.modifiers.minus_discard_per_joker = false

    --STICKERS

    G.GAME.modifiers.all_rental_jokers = false
    G.GAME.modifiers.rentals_keep_price = false
    G.GAME.modifiers.rental_rate_increase = 0
    G.GAME.modifiers.rental_rate_increase_all = 0

    G.GAME.modifiers.all_perishable_jokers = false

    G.GAME.modifiers.all_singular_jokers = false

    G.GAME.modifiers.all_shrouded_jokers = false

    G.GAME.modifiers.all_pinned_jokers = false

    G.GAME.modifiers.cannot_sell_stickered = false

    -- OTHER CARD MODIFICATIONS

    G.GAME.modifiers.disable_suit = {}
    G.GAME.modifiers.disable_rank = {}

    --SHOP

    G.GAME.modifiers.no_vouchers = false
    G.GAME.modifiers.reroll_cost_increase = 1
    G.GAME.modifiers.all_shop_scaling = 1
    G.GAME.modifiers.shop_scaling_ante_increase = 0
    G.GAME.modifiers.shop_scaling_round_increase = 0
    G.GAME.modifiers.disable_rerolls = false
    G.GAME.modifiers.forced_joker = nil
    G.GAME.modifiers.forced_joker_all = nil
    G.GAME.modifiers.forced_joker_pool = {}

    G.GAME.modifiers.anaglyph = {} 

    --BLINDS

    G.GAME.modifiers.disable_small = false
    G.GAME.modifiers.disable_small_ante = -1
    G.GAME.modifiers.disable_big = false
    G.GAME.modifiers.disable_big_ante = -1
    G.GAME.modifiers.second_boss = false
    G.GAME.modifiers.second_boss_ante = -1
    G.GAME.modifiers.chdp_third_boss = false
    G.GAME.modifiers.chdp_third_boss_ante = -1
    G.GAME.last_chdp_blind = nil
    G.GAME.last_chdp2_blind = nil
    G.GAME.chdp_additional_blinds = 0

    G.GAME.modifiers.disable_skipping_ante = -1

    G.GAME.modifiers.chdp_pillar = false

    G.GAME.chdp_spacer = false

    G.GAME.challenge_id = G.GAME.challenge

    G.GAME.modifiers.chdp_disabled_partner = false
    G.GAME.modifiers.chdp_disable_charms = false
    G.GAME.modifiers.chdp_no_learning_grim = false

    if (SMODS.Mods["Talisman"] or {}).can_load then --talisman is here
        G.GAME.modifiers.chdp_talisman_check = true
    end

    if (SMODS.Mods["YGGDRASIL"] or {}).can_load then --Yggdrasil is here.
        G.GAME.modifiers.chdp_banned_skills_yggdrasil = {}
        G.GAME.modifiers.chdp_ygg_min_mats = 1
        G.GAME.modifiers.chdp_ygg_max_mats = 3
    end

    EveryModPrefix = {}
    for k, v in pairs(SMODS.Mods) do
        EveryModPrefix[#EveryModPrefix+1] = v.prefix
    end
end

local start_run_ref = Game.start_run
function Game:start_run(args)
    local result = start_run_ref(self, args)
    if G.GAME.modifiers.no_vouchers then
        G.GAME.current_round.voucher = nil
    end
    return result
end

local challenge_list_ref = G.UIDEF.challenge_list_page
function G.UIDEF.challenge_list_page(_page)
    local nonhidden_challenges = {}
    for k, v in ipairs(G.CHALLENGES) do
        if not v.hidden then
            nonhidden_challenges[#nonhidden_challenges+1] = {
                num = k, item = v
            }
        end
    end
    local snapped = false
    local challenge_list = {}
    for k, v in ipairs(nonhidden_challenges) do
        if k > G.CHALLENGE_PAGE_SIZE*(_page or 0) and k <= G.CHALLENGE_PAGE_SIZE*((_page or 0) + 1) then
            if G.CONTROLLER.focused.target and G.CONTROLLER.focused.target.config.id == 'challenge_page' then snapped = true end
                local challenge_completed =  G.PROFILES[G.SETTINGS.profile].challenge_progress.completed[v.item.id or '']
                local challenge_unlocked = G.PROFILES[G.SETTINGS.profile].challenges_unlocked and (G.PROFILES[G.SETTINGS.profile].challenges_unlocked >= v.num)
                if v.item.unlocked and type(v.item.unlocked) == 'function' then
                    challenge_unlocked = v.item:unlocked()
                elseif type(v.item.unlocked) == 'boolean' then
                    challenge_unlocked = v.item.unlocked
                end
                local challenge_color = G.C.RED
                if v.item.rules and v.item.rules.custom then
                    for i, j in ipairs(v.item.rules.custom) do
                        if j.id == 'color' then
                            challenge_color = G.C[j.value]
                        end
                    end
                end
                challenge_list[#challenge_list+1] = 
                {n=G.UIT.R, config={align = "cm"}, nodes={
                    {n=G.UIT.C, config={align = 'cl', minw = 0.8}, nodes = {
                        {n=G.UIT.T, config={text = k..'', scale = 0.4, colour = G.C.WHITE}},
                    }},
                    UIBox_button({id = v.num, col = true, label = {challenge_unlocked and localize(v.item.id, 'challenge_names') or localize('k_locked'),}, button = challenge_unlocked and 'change_challenge_description' or 'nil', colour = challenge_unlocked and (challenge_color) or G.C.GREY, minw = 4, scale = 0.4, minh = 0.6, focus_args = {snap_to = not snapped}}),
                    {n=G.UIT.C, config={align = 'cm', padding = 0.05, minw = 0.6}, nodes = {
                        {n=G.UIT.C, config={minh = 0.4, minw = 0.4, emboss = 0.05, r = 0.1, colour = challenge_completed and G.C.GREEN or G.C.BLACK}, nodes = {
                            challenge_completed and {n=G.UIT.O, config={object = Sprite(0,0,0.4,0.4, G.ASSET_ATLAS["icons"], {x=1, y=0})}} or nil
                        }},
                    }},
                }}      
            snapped = true
        end
    end

    return {n=G.UIT.ROOT, config={align = "cm", padding = 0.1, colour = G.C.CLEAR}, nodes=challenge_list}
end

local end_round_ref = end_round
function end_round()
    if (G.GAME.round_resets.ante + 1) == G.GAME.modifiers.second_boss_ante and G.GAME.blind:get_type() == 'Boss' then
        G.GAME.modifiers.second_boss = true
        G.GAME.round_resets.blind_choices.ChDp_Boss = get_new_boss()
        G.GAME.last_chdp_blind = G.GAME.round_resets.blind_choices.ChDp_Boss
        G.GAME.round_resets.blind_states.ChDp_Boss = 'Upcoming'
    end
    if (G.GAME.round_resets.ante + 1) == G.GAME.modifiers.chdp_third_boss_ante and G.GAME.blind:get_type() == 'Boss' then
        G.GAME.modifiers.chdp_third_boss = true
        G.GAME.round_resets.blind_choices.ChDp_Boss2 = get_new_boss()
        G.GAME.last_chdp2_blind = G.GAME.round_resets.blind_choices.ChDp_Boss2
        G.GAME.round_resets.blind_states.ChDp_Boss2 = 'Upcoming'
    end 
    return end_round_ref()
end

local get_next_voucher_key_ref = get_next_voucher_key
function get_next_voucher_key(_from_tag)
    if G.GAME.modifiers.no_vouchers == true then
        return nil
    else
        local result = get_next_voucher_key_ref(_from_tag)
        return result
    end
    
end

local challenge_desc_ref = G.UIDEF.challenge_description
if next(SMODS.find_mod('aikoyorisshenanigans')) then
    function G.UIDEF.challenge_description(_id, daily, is_row, is_hardcore)
        G.GAME.challenge_id = _id
        return challenge_desc_ref(_id, daily, is_row, is_hardcore)
    end
else
    function G.UIDEF.challenge_description(_id, daily, is_row)
        G.GAME.challenge_id = _id
        return challenge_desc_ref(_id, daily, is_row)
    end
end

local is_in_run_info_tab = false
local run_info_ref = G.UIDEF.run_info
function G.UIDEF.run_info()
    is_in_run_info_tab = true
    local result = run_info_ref()
    is_in_run_info_tab = false
    return result
end

local create_tabs_ref = create_tabs
function create_tabs(args)
if args and args["tabs"] and is_in_run_info_tab and (G.GAME.challenge or G.GAME.modifiers.chaos_engine or G.GAME.modifiers.chaos_engine_all) then
    args.tabs[#args.tabs + 1] = {
        label = localize('b_rules'),
        tab_definition_function = function()
            return {
                n = G.UIT.ROOT,
                config = {
                    offset = {x=0, y=0},
                    align = 'cm',
                    colour = {0,0,0,0}
                },
                nodes = {
                    G.UIDEF.run_rules()
                }
            }
        end
    }
end
return create_tabs_ref(args)
end

function G.UIDEF.run_rules()
    local challenge = G.CHALLENGES[get_challenge_int_from_id(G.GAME.challenge)]
    if challenge then
    local start_rules = {}
    local modded_starts = nil
    local game_rules = {}
    local starting_params = get_starting_params()
    local base_modifiers = {
      dollars = {value = starting_params.dollars, order = 6},
      discards = {value = starting_params.discards, order = 2},
      hands = {value = starting_params.hands, order = 1},
      reroll_cost = {value = starting_params.reroll_cost, order = 7},
      joker_slots = {value = starting_params.joker_slots, order = 4},
      consumable_slots = {value = starting_params.consumable_slots, order = 5},
      hand_size = {value = starting_params.hand_size, order = 3},
  }
  local bonus_mods = 100
  if challenge.rules then
    if challenge.rules.modifiers then
      for k, v in ipairs(challenge.rules.modifiers) do
        base_modifiers[v.id] = {value = v.value, order = base_modifiers[v.id] and base_modifiers[v.id].order or bonus_mods, custom = true, old_val = base_modifiers[v.id].value}
        bonus_mods = bonus_mods + 1
      end
    end
  end
  local nu_base_modifiers = {}
  for k, v in pairs(base_modifiers) do
    v.key = k
    nu_base_modifiers[#nu_base_modifiers+1] = v
  end
  table.sort(nu_base_modifiers, function(a,b) return a.order < b.order end)
  for k, v in ipairs(nu_base_modifiers) do
    if v.old_val then
      modded_starts = modded_starts or {}
      modded_starts[#modded_starts+1] = {n=G.UIT.R, config={align = "cl", maxw = 3.5}, nodes= localize{type = 'text', key = 'ch_m_'..v.key, vars = {v.value}, default_col = G.C.L_BLACK}}
    
    else
      start_rules[#start_rules+1] = {n=G.UIT.R, config={align = "cl", maxw =3.5}, nodes= localize{type = 'text', key = 'ch_m_'..v.key, vars = {v.value}, default_col = not v.custom and G.C.UI.TEXT_INACTIVE or nil}}
    end
  end

  if modded_starts then
    start_rules = {
      modded_starts and {n=G.UIT.R, config={align = "cl", padding = 0.05}, nodes=modded_starts} or nil,
      {n=G.UIT.R, config={align = "cl", padding = 0.05, colour = G.C.GREY}, nodes={}},
      {n=G.UIT.R, config={align = "cl", padding = 0.05}, nodes=start_rules},
    }
  end

    if challenge.rules then
      if challenge.rules.custom then
        for k, v in ipairs(challenge.rules.custom) do
                game_rules[#game_rules+1] = {n=G.UIT.R, config={align = "cl"}, nodes= localize{type = 'text', key = 'ch_c_'..v.id, vars = {v.value}}}
        end  
      end
      if G.GAME.chaos_rules then
        for k, v in ipairs(G.GAME.chaos_rules) do
            if v.value then
                game_rules[#game_rules+1] = {n=G.UIT.R, config={align = "cl"}, nodes= localize{type = 'text', key = 'ch_c_'..v.id, vars = {v.value}}}
            else
                game_rules[#game_rules+1] = {n=G.UIT.R, config={align = "cl"}, nodes= localize{type = 'text', key = 'ch_c_'..v.id, vars = {}}}
            end
        end
      end
    end
    if (not start_rules[1]) and (not modded_starts) then  start_rules[#start_rules+1] = {n=G.UIT.R, config={align = "cl"}, nodes= localize{type = 'text', key = 'ch_m_none', vars = {}}} end
    if not game_rules[1] then  game_rules[#game_rules+1] = {n=G.UIT.R, config={align = "cl"}, nodes= localize{type = 'text', key = 'ch_c_none', vars = {}}} end

    local starting_rule_list = {n=G.UIT.C, config={align = "cm", minw = 3, r = 0.1, colour = G.C.BLUE}, nodes={
      {n=G.UIT.R, config={align = "cm", padding = 0.08, minh = 0.6}, nodes={
        {n=G.UIT.T, config={text = localize('k_game_modifiers'), scale = 0.4, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
      }},
      {n=G.UIT.R, config={align = "cm", minh = 4.1, minw = 4.2, padding = 0.05, r = 0.1, colour = G.C.WHITE}, nodes= start_rules}
    }}

    local override_rule_list = {n=G.UIT.C, config={align = "cm", minw = 3, r = 0.1, colour = G.C.BLUE}, nodes={
      {n=G.UIT.R, config={align = "cm", padding = 0.08, minh = 0.6}, nodes={
        {n=G.UIT.T, config={text = localize('k_custom_rules'), scale = 0.4, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
      }},
      {n=G.UIT.R, config={align = "cm", minh = 4.1, minw = 6.8, maxw = 6.7, padding = 0.05, r = 0.1, colour = G.C.WHITE}, nodes= game_rules}
    }}

    return {n=G.UIT.ROOT, config={align = "cm", padding = 0.05, colour = G.C.CLEAR}, nodes={
      {n=G.UIT.C, config={align = "cm", padding = 0.1, colour = G.C.L_BLACK, r = 0.1, minw = 3}, nodes={
        override_rule_list,starting_rule_list
      }}
    }}
    elseif G.GAME and G.GAME.chaos_rules then
        local game_rules = {}
        for k, v in ipairs(G.GAME.chaos_rules) do
            if v.value then
                game_rules[#game_rules+1] = {n=G.UIT.R, config={align = "cl"}, nodes= localize{type = 'text', key = 'ch_c_'..v.id, vars = {v.value}}}
            else
                game_rules[#game_rules+1] = {n=G.UIT.R, config={align = "cl"}, nodes= localize{type = 'text', key = 'ch_c_'..v.id, vars = {}}}
            end
        end
        local override_rule_list = {n=G.UIT.C, config={align = "cm", minw = 3, r = 0.1, colour = G.C.RED}, nodes={
            {n=G.UIT.R, config={align = "cm", padding = 0.08, minh = 0.6}, nodes={
                {n=G.UIT.T, config={text = localize('k_chaos_rules'), scale = 0.4, colour = G.C.UI.TEXT_LIGHT, shadow = true}},
            }},
            {n=G.UIT.R, config={align = "cm", minh = 4.1, minw = 6.8, maxw = 6.7, padding = 0.05, r = 0.1, colour = G.C.WHITE}, nodes= game_rules}
        }}
        return {n=G.UIT.ROOT, config={align = "cm", padding = 0.05, colour = G.C.CLEAR}, nodes={
            {n=G.UIT.C, config={align = "cm", padding = 0.1, colour = G.C.L_BLACK, r = 0.1, minw = 3}, nodes={
                override_rule_list
            }}
        }}
    end
end

local set_edition_ref = Card.set_edition
function Card:set_edition(edition, immediate, silent)
    if self.ability.set == "Joker" then
        if G.GAME.modifiers.all_rental_jokers == true then
            self:set_rental(true)
        end
        if G.GAME.modifiers.all_perishable_jokers == true then
            self:set_perishable(true)
        end
        if G.GAME.modifiers.all_singular_jokers == true then
            self.ability.chdp_singular = true
        end
        if G.GAME.modifiers.all_shrouded_jokers == true then
            self.ability.chdp_shrouded = true
        end
        if G.GAME.modifiers.all_pinned_jokers == true then
            self.pinned = true
        end
        if (SMODS.Mods.Bunco or {}).can_load then
            if G.GAME.modifiers.all_hindered_jokers == true then
                self.ability.bunc_hindered = true
            end
            if G.GAME.modifiers.all_scattering_jokers == true then
                self.ability.bunc_scattering = true
            end
            if G.GAME.modifiers.all_reactive_jokers == true then
                self.ability.bunc_reactive = true
            end
        end
    end
    local run = true

    if edition then
    if G.GAME.modifiers.no_edition_jokers and self.ability.set == "Joker" then
        run = false
    end
    if G.GAME.modifiers.no_edition_cards and not(self.ability.set == "Joker") then
        run = false
    end

    if (edition == "e_foil" or edition.foil) and G.GAME.modifiers.no_foil_jokers and self.ability.set == "Joker" then
        run = false
    end
    if (edition == "e_foil" or edition.foil) and G.GAME.modifiers.no_foil_cards and not(self.ability.set == "Joker") then
        run = false
    end

    if (edition == "e_holo" or edition.holo) and G.GAME.modifiers.no_holo_jokers and self.ability.set == "Joker" then
        run = false
    end
    if (edition == "e_holo" or edition.holo) and G.GAME.modifiers.no_holo_cards and not(self.ability.set == "Joker") then
        run = false
    end

    if (edition == "e_polychrome" or edition.polychrome) and G.GAME.modifiers.no_polychrome_jokers and self.ability.set == "Joker" then
        run = false
    end
    if (edition == "e_polychrome" or edition.polychrome) and G.GAME.modifiers.no_polychrome_cards and not(self.ability.set == "Joker") then
        run = false
    end
    
    if (edition == "e_negative" or edition.negative) and G.GAME.modifiers.no_negative_jokers and self.ability.set == "Joker" then
        run = false
    end
    if (SMODS.Mods.Bunco or {}).can_load then
        if (edition == "e_bunc_fluorescent" or edition.bunc_fluorescent) and G.GAME.modifiers.no_fluorescent_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_bunc_fluorescent" or edition.bunc_fluorescent) and G.GAME.modifiers.no_fluorescent_cards and not(self.ability.set == "Joker") then
            run = false
        end

        if (edition == "e_bunc_glitter" or edition.bunc_glitter) and G.GAME.modifiers.no_glitter_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_bunc_glitter" or edition.bunc_glitter) and G.GAME.modifiers.no_glitter_cards and not(self.ability.set == "Joker") then
            run = false
        end
    end
    if (SMODS.Mods.Cryptid or {}).can_load then
        if (edition == "e_cry_mosaic" or edition.cry_mosaic) and G.GAME.modifiers.no_mosaic_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_mosaic" or edition.cry_mosaic) and G.GAME.modifiers.no_mosaic_cards and not(self.ability.set == "Joker") then
            run = false
        end

        if (edition == "e_cry_glitched" or edition.cry_glitched) and G.GAME.modifiers.no_glitched_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_glitched" or edition.cry_glitched) and G.GAME.modifiers.no_glitched_cards and not(self.ability.set == "Joker") then
            run = false
        end

        if (edition == "e_cry_oversat" or edition.cry_oversat) and G.GAME.modifiers.no_oversat_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_oversat" or edition.cry_oversat) and G.GAME.modifiers.no_oversat_cards and not(self.ability.set == "Joker") then
            run = false
        end

        if (edition == "e_cry_gold" or edition.cry_gold) and G.GAME.modifiers.no_gold_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_gold" or edition.cry_gold) and G.GAME.modifiers.no_gold_cards and not(self.ability.set == "Joker") then
            run = false
        end

        if (edition == "e_cry_glass" or edition.cry_glass) and G.GAME.modifiers.no_glass_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_glass" or edition.cry_glass) and G.GAME.modifiers.no_glass_cards and not(self.ability.set == "Joker") then
            run = false
        end

        if (edition == "e_cry_blur" or edition.cry_blur) and G.GAME.modifiers.no_blur_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_blur" or edition.cry_blur) and G.GAME.modifiers.no_blur_cards and not(self.ability.set == "Joker") then
            run = false
        end

        if (edition == "e_cry_astral" or edition.cry_astral) and G.GAME.modifiers.no_astral_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_astral" or edition.cry_astral) and G.GAME.modifiers.no_astral_cards and not(self.ability.set == "Joker") then
            run = false
        end
        if (edition == "e_cry_m" or edition.cry_m) and G.GAME.modifiers.no_m_jokers and self.ability.set == "Joker" then
            run = false
        end
        if (edition == "e_cry_m" or edition.cry_m) and G.GAME.modifiers.no_m_cards and not(self.ability.set == "Joker") then
            run = false
        end
    end
    if silent == true then
        run = true
    end
    if run then
        return set_edition_ref(self, edition, immediate, silent)
    else
        play_sound('tarot2', 0.76, 0.4)
        play_sound('tarot2', 1, 0.4)
        self:juice_up(0.3,0.5)
    end
end
end

local update_ca_ref = CardArea.update
function CardArea:update(dt)
    if self == G.hand then
        if G.GAME.modifiers.minus_jokers_per_dollar then
            if G.GAME.modifiers.minus_jokers_per_dollar > 0 then
            self.config.last_poll_size_jk = self.config.last_poll_size_jk or 0
            local jokerstoadd = math.floor(to_number(to_big(G.GAME.dollars))/G.GAME.modifiers.minus_jokers_per_dollar)
            if jokerstoadd ~= self.config.last_poll_size_jk and jokerstoadd > 0 then
                G.jokers.config.card_limit = G.jokers.config.card_limit - (jokerstoadd - self.config.last_poll_size_jk)
                self.config.last_poll_size_jk = math.floor(to_number(to_big(G.GAME.dollars))/G.GAME.modifiers.minus_jokers_per_dollar)
            end
        end
        end
        if G.GAME.modifiers.jokers_per_dollar then
            if G.GAME.modifiers.jokers_per_dollar > 0 then
            self.config.last_poll_size_jk = self.config.last_poll_size_jk or 0
            local jokerstoadd = math.floor(to_number(to_big(G.GAME.dollars))/G.GAME.modifiers.jokers_per_dollar)
            if jokerstoadd ~= self.config.last_poll_size_jk and jokerstoadd > 0 then
                G.jokers.config.card_limit = G.jokers.config.card_limit + (jokerstoadd - self.config.last_poll_size_jk)
                self.config.last_poll_size_jk = math.floor(to_number(to_big(G.GAME.dollars))/G.GAME.modifiers.jokers_per_dollar)
            end
        end
        end
        local overflow = #G.jokers.cards - G.jokers.config.card_limit
        if #G.jokers.cards > G.jokers.config.card_limit then
            G.GAME.joker_overflow = true --jokers are overflowing
        else
            G.GAME.joker_overflow = false --jokers are NOT overflowing
        end
        if G.GAME.modifiers.overflow_perishable then
            if G.GAME.joker_overflow == true then
                for k, v in ipairs(G.jokers.cards) do
                    if not v.ability.perishable then
                        v.ability.temp_perishable = true
                        v:set_perishable()
                    end
                end
            else
                for k, v in ipairs(G.jokers.cards) do
                    if v.ability.temp_perishable == true then
                        v.ability.temp_perishable = false
                        v.ability.perishable = false
                    end
                end
            end
        end
        if G.GAME.modifiers.overflow_debuff then
            if G.GAME.joker_overflow == true then
                for k, v in ipairs(G.jokers.cards) do
                    if not v.debuff then
                        v.ability.temp_debuff = true
                        v.debuff = true
                    end
                end
            else
                for k, v in ipairs(G.jokers.cards) do
                        if v.ability.temp_debuff then
                        v.ability.temp_debuff = false
                        v.debuff = false
                        end
                end
            end
        end
        if G.GAME.modifiers.overflow_debuff_one then
            local jokers = {}
            local debuffed_jokers = {}
            local debuff = 0
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].debuff or G.jokers.cards[i].ability.debuff_rule == true then 
                    debuffed_jokers[#debuffed_jokers+1] = G.jokers.cards[i]
                    debuff = debuff + 1 
                    G.jokers.cards[i]:set_debuff(true)
                end
                if not G.jokers.cards[i].debuff then
                    jokers[#jokers+1] = G.jokers.cards[i]
                end
            end
            if overflow > debuff and #jokers > 0 then
            for i = 0, overflow - debuff do
                local card = pseudorandom_element(jokers)
                    card.ability.debuff_rule = true
                    card:set_debuff(true)
            end
            elseif overflow < debuff and #debuffed_jokers > 0 then
                for i = 0, debuff - overflow do
                    local card = pseudorandom_element(debuffed_jokers)
                    card.ability.debuff_rule = false
                    card:set_debuff(false)
                end
            end
        end
        if G.GAME.modifiers.hand_per_joker then
            local base = G.GAME.starting_params.hands
            G.GAME.round_resets.hands = base + #G.jokers.cards
        end
        if G.GAME.modifiers.minus_discard_per_joker then
            local base = G.GAME.starting_params.discards
            G.GAME.round_resets.discards = base - #G.jokers.cards
        end
    end
    local result = update_ca_ref(self, dt)
    
    return result
end

function Card:set_rental(_rental)
    self.ability.rental = _rental
    if not G.GAME.modifiers.rentals_keep_price then
        self:set_cost()
    end
end

local can_sell_card_ref = Card.can_sell_card
function Card:can_sell_card(context)
    if G.GAME.modifiers.cannot_sell_stickered then
        for k, v in pairs(SMODS.Stickers) do
            if self.ability[k] then
                return false
            end
        end
    end
    return can_sell_card_ref(self, context)
end

-- BLIND.LUA HOOKS

local set_blind_ref = Blind.set_blind
function Blind:set_blind(blind, reset, silent)
    local result = set_blind_ref(self, blind, reset, silent)
    if G.GAME.modifiers.money_scaling then
    G.GAME.blind.dollars = math.floor(G.GAME.blind.dollars * G.GAME.modifiers.money_scaling)
    end
    if G.GAME.round_resets.blind_states.ChDp_Boss2 ~= "Hide" and not(G.GAME.modifiers.chdp_third_boss) then
        G.GAME.round_resets.blind_states.ChDp_Boss2 = "Hide"
        G.GAME.round_resets.blind_states.ChDp_Boss = 'Current'
    end
    if G.GAME.round_resets.blind_states.ChDp_Boss ~= "Hide" and not(G.GAME.modifiers.second_boss) then
        G.GAME.round_resets.blind_states.ChDp_Boss = "Hide"
        G.GAME.round_resets.blind_states.Boss = 'Current'
    end
    return result
end

local defeat_blind_ref = Blind.defeat
function Blind:defeat(silent)
    local result = defeat_blind_ref(self, silent)
    if G.GAME.modifiers.second_boss and G.GAME.round_resets.blind_states.ChDp_Boss == "Upcoming" and G.GAME.round_resets.blind_states.Boss == "Current" then
        G.GAME.round_resets.blind_states.ChDp_Boss = "Current"
        G.GAME.round_resets.blind_states.Boss = "Upcoming"
    end
    if G.GAME.modifiers.chdp_third_boss and G.GAME.round_resets.blind_states.ChDp_Boss2 == "Upcoming" and (G.GAME.round_resets.blind_states.Boss == "Current" or G.GAME.round_resets.blind_states.ChDp_Boss == "Current") then
        G.GAME.round_resets.blind_states.ChDp_Boss2 = "Current"
        G.GAME.round_resets.blind_states.ChDp_Boss = "Upcoming"
        G.GAME.round_resets.blind_states.Boss = "Upcoming"
    end
    return result
end

local debuff_card_ref = Blind.debuff_card
function Blind:debuff_card(card, from_blind)
    local result = debuff_card_ref(self,card,from_blind)
    if card.ability.debuff_rule then
        card:set_debuff(true)
    end
    if not(card.ability.set == 'Joker' or card.ability.consumable or card.ability.set == 'Voucher' or card.ability.set == 'Booster') then
    if G.GAME.modifiers.disable_suit and type(G.GAME.modifiers.disable_suit) ~= "string" then
        for k, v in ipairs(G.GAME.modifiers.disable_suit) do
            if card:is_suit(v) then
                card:set_debuff(true)
            end
        end
    end
    if G.GAME.modifiers.disable_rank and type(G.GAME.modifiers.disable_rank) ~= "string" then
        for k, v in ipairs(G.GAME.modifiers.disable_rank) do
            if card:get_id() == v then
                card:set_debuff(true)
            end
        end
    end
    end
    return result
end

local debuff_hand_ref = Blind.debuff_hand
function Blind:debuff_hand(cards, hand, handname, check)
    local result = debuff_hand_ref(self,cards, hand, handname, check)
    local whitelist = true
    G.GAME.hand_to_disable = nil
    if G.GAME.modifiers.whitelist_hand and #G.GAME.modifiers.whitelist_hand > 0 then
        for k, v in ipairs(G.GAME.modifiers.whitelist_hand) do
            if handname == v then
                whitelist = false
            end
        end
        return whitelist
    end
    if G.GAME.modifiers.disable_hand then
        for k, v in ipairs(G.GAME.modifiers.disable_hand) do
            if handname == v then
                G.GAME.hand_to_disable = v
                return true
            end
        end
    end
    if G.GAME.modifiers.disable_hand_containing then
        for k, v in ipairs(G.GAME.modifiers.disable_hand_containing) do
            if next(hand[v]) then
                return true
            end
        end
    end
    if G.GAME.modifiers.chdp_blackjack > 0 then
        local sum = 0
        local aces = 0
        for k, v in ipairs(cards) do
            sum = sum + v.base.nominal
            if v.base.value == 'Ace' then
                aces = aces + 1
            end
        end
        G.GAME.hand_total = true
        for i = 0, aces do
            if sum == G.GAME.modifiers.chdp_blackjack then
                G.GAME.hand_total = false
            end
            sum = sum - 10 -- Change ace from an 11 to a 1
        end
        if G.GAME.hand_total == true then
            return true
        end
    end
    return result
end

local debuff_text_ref = Blind.get_loc_debuff_text
function Blind:get_loc_debuff_text()
        if G.GAME.hand_to_disable then
            return (G.GAME.hand_to_disable..' hands are Debuffed')
        end
    result = debuff_text_ref(self)
    return result
end

-- Next Ante Preview Compat

local predict_ref = predict_next_ante
function predict_next_ante()
    local result = predict_ref()
    if G.GAME.modifiers.disable_small or (G.GAME.modifiers.disable_small_ante > -1 and G.GAME.modifiers.disable_small_ante <= G.GAME.round_resets.ante) then
        result.Small = nil
    end
    if G.GAME.modifiers.disable_big or (G.GAME.modifiers.disable_big_ante > -1 and G.GAME.modifiers.disable_big_ante <= G.GAME.round_resets.ante) then
        result.Big = nil
    end
    return result
end

-- Grim compat

local GRIM = (SMODS.Mods["GRM"] or {})

if GRIM.can_load then
local grim_add_xp_ref = add_skill_xp
function add_skill_xp(amount, card, message_, no_mod)
    amount = amount*(G.GAME.modifiers.chdp_grim_xp_mult or 1)
    return grim_add_xp_ref(amount,card,message_,no_mod)
end

local grim_can_learn = G.FUNCS.can_learn
G.FUNCS.can_learn = function(e)
    if G.GAME.modifiers.chdp_no_learning_grim then
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = 'do_nothing'
    else
        return grim_can_learn(e)
    end
end
end
-- Yggdrasil compat

local YGGDRASIL = (SMODS.Mods["YGGDRASIL"] or {})

if YGGDRASIL.can_load then
    local ygg_add_xp_ref = YGGDRASIL.change_xp
    YGGDRASIL.change_xp = function(xp)
        if xp > 0 then
            xp = xp * (G.GAME.modifiers.chdp_ygg_xp_mult or 1)
        end
        ygg_add_xp_ref(xp)
    end

    local ygg_skill_obtained = if_skill_obtained
    function if_skill_obtained(key)
        if G.GAME.modifiers.chdp_banned_skills_yggdrasil and G.GAME.modifiers.chdp_banned_skills_yggdrasil[key] then
            return false
        else
            return ygg_skill_obtained(key)
        end
    end

    local ygg_skill_unlocked = sp_check_if_unlocked
    function sp_check_if_unlocked(e)
        if G.GAME.modifiers.chdp_banned_skills_yggdrasil and G.GAME.modifiers.chdp_banned_skills_yggdrasil[e.config.perk_info.perk_id] then
            return false
        end
        return ygg_skill_unlocked(e)
    end
end

-- wait... these are MY functions??? wtf???

CHDP = SMODS.current_mod

CHDP.setup_chaos_run = function()
G.GAME.chaos_tags = {
        'uncommon',
        'rare',
        'negative',
        'foil',
        'holo',
        'polychrome',
        'investment',
        'voucher',
        'boss',
        'standard',
        'charm',
        'meteor',
        'buffoon',
        'handy',
        'garbage',
        'coupon',
        'juggle',
        'd_six',
        'top_up',
        'skip',
        'economy',
        'ethereal'
    }
    G.GAME.chaos_editions = {
        'foil',
        'holo',
        'polychrome'
    }
    G.GAME.chaos_hands = {
        'High Card',
        'Pair',
        'Two Pair',
        'Full House',
        'Flush',
        'Straight',
        'Straight Flush',
        'Three of a Kind',
        'Four of a Kind',
        'Five of a Kind',
        'Flush Five',
        'Flush House'
    }
    G.GAME.chaos_engine_rules = {
        {id = 'no_vouchers'},
        {id = 'enable_eternal_jokers'},
        {id = 'enable_rental_jokers'},
        {id = 'enable_perishable_jokers'},
        {id = 'inflation'},
        {id = 'no_interest'},
        {id = 'no_extra_hand_money'},
        {id = 'no_shop_jokers'}
    }

    if (SMODS.Mods.Bunco or {}).can_load then --add bunco stuff
        local chaos_bunc_tags = {
            'bunc_breaking',
            'bunc_arcade',
            'bunc_glitter',
            'bunc_fluorescent',
            'bunc_filigree',
        }
        for k, v in ipairs(chaos_bunc_tags) do
            G.GAME.chaos_tags[#G.GAME.chaos_tags+1] = v
        end
        local chaos_bunc_editions = {
            'fluorescent',
            'glitter'
        }
        for k, v in ipairs(chaos_bunc_editions) do
            G.GAME.chaos_editions[#G.GAME.chaos_editions+1] = v
        end
        local chaos_bunc_rules = {
            {id = 'enable_scattering_jokers'},
            {id = 'enable_reactive_jokers'},
            {id = 'enable_hindered_jokers'},
            {id = 'disable_hand_containing', value = 'Spectrum', hand = 'bunc_Spectrum'}
        }
        for k, v in ipairs(chaos_bunc_rules) do
            G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = v
        end
    end

    if (SMODS.Mods.Cryptid or {}).can_load then -- check for cryptid, add chaos rules/tags
        local cryptid_config = SMODS.load_mod_config({id = "Cryptid", path = SMODS.Mods.Cryptid.path}) -- add cryptid config
        if cryptid_config["Tags"] then
            local chaos_cry_tags = {
                'cry_cat',
                'cry_schematic',
                'cry_gambler',
                'cry_empowered',
                'cry_bundle',
                'cry_banana',
                'cry_scope',
                'cry_gourmand',
                'cry_bettertop_up',
                'cry_booster'
            }
            if cryptid_config["Epic Jokers"] then
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_epic'
            end
            if cryptid_config["Vouchers"] then
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_better_voucher'
            end
            if cryptid_config["Misc."] then
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_glitched'
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_oversat'
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_mosaic'
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_gold'
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_glass'
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_blur'
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_astral'
                chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_loss'
                if cryptid_config["M Jokers"] then
                    chaos_cry_tags[#chaos_cry_tags + 1] = 'cry_m'
                end
            end
            for k, v in ipairs(chaos_cry_tags) do
                G.GAME.chaos_tags[#G.GAME.chaos_tags+1] = v
            end
        end
        if cryptid_config["Misc."] then
            local chaos_cry_rules = {
                'mosaic',
                'glitched',
                'oversat',
                'gold',
                'glass',
                'blur',
                'astral',
                'm',
            }
            for k, v in ipairs(chaos_cry_rules) do
                G.GAME.chaos_editions[#G.GAME.chaos_editions+1] = v
            end
        end
    end
    G.GAME.chaos_editions_jokers = G.GAME.chaos_editions
    G.GAME.chaos_editions_cards = G.GAME.chaos_editions
    G.GAME.chaos_editions_jokers[#G.GAME.chaos_editions_jokers+1] = 'negative'
    G.GAME.chaos_rules = {}

local chaos_value_rules = {
        {id = 'blind_scaling', const = 0.5, mult = 3.5, round = false},
        {id = 'all_shop_scaling', const = 0.75, mult = 2, round = false},
        {id = 'win_ante', const = (G.GAME.win_ante or 8) - 2, mult = 6, round = true, dp = 1},
        {id = 'money_total_scaling', const = 25, mult = 100, round = true, dp = 100}
    }
    for k, v in ipairs(chaos_value_rules) do --add chaos_value_rules randomised
        local rnd_num = math.random()
        if v.round == true then
            if rnd_num*v.mult % 1 < 0.5 then
                G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = v.id, value = math.floor(v.const + (rnd_num*v.mult))/v.dp}
            else
                G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = v.id, value = math.ceil(v.const + (rnd_num*v.mult))/v.dp}
            end
        else
            G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = v.id, value = v.const + (rnd_num*v.mult)}
        end
    end

                        local chaos_number = math.random()
                        for k, v in ipairs(G.GAME.chaos_tags) do --choose a random tag to add as anaglyph rule to the chaos engine
                            if chaos_number < k/#G.GAME.chaos_tags then
                                G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = 'anaglyph', value = localize{type = 'name_text', set = 'Tag', key = 'tag_'..v, nodes = {}}, tag = v}
                                break
                            end
                        end

                        local chaos_number = math.random()
                        for k, v in ipairs(G.GAME.chaos_editions_cards) do --choose a random playing card edition to add as a ban
                            if chaos_number < k/#G.GAME.chaos_editions_cards then
                                G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = 'no_'..v..'_cards', edition_type = 'cards'}
                                table.remove(G.GAME.chaos_editions_cards, k)
                                break
                            end
                        end

                        local chaos_number = math.random()
                        for k, v in ipairs(G.GAME.chaos_editions) do --choose a random edition to add as a ban for every card
                            if chaos_number < k/#G.GAME.chaos_editions then
                                G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = 'no_'..v..'s', edition_type = 'all'}
                                table.remove(G.GAME.chaos_editions, k)
                                break
                            end
                        end

                        local chaos_number = math.random()
                        for k, v in ipairs(G.GAME.chaos_editions_jokers) do --choose a random joker edition to add as a ban
                            if chaos_number < k/#G.GAME.chaos_editions_jokers then
                                G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = 'no_'..v..'_jokers', edition_type = 'jokers'}
                                table.remove(G.GAME.chaos_editions_jokers, k)
                                break
                            end
                        end

                        local chaos_number = math.random()
                        for k, v in ipairs(G.GAME.chaos_hands) do --choose a random hand to ban
                            if chaos_number < k/#G.GAME.chaos_hands then
                                G.GAME.chaos_engine_rules[#G.GAME.chaos_engine_rules+1] = {id = 'disable_hand', value = v, hand = v}
                                break
                            end
                        end
end

--HAVE A STICKER

SMODS.Sticker{
    key = 'singular',
    loc_txt = {
        name = 'Singular',
        label = 'Singular',
        text = {
            'Joker cannot',
            'be duplicated'
        }
    },
    sets = {
        Joker = true
    },
    rate = 0.7,
    needs_enable_flag = true,
    badge_colour = HEX('583876'),
    atlas = 'chdpstickers',
    pos = {x = 0, y = 0}
}

SMODS.Sticker{
    key = 'shrouded',
    loc_txt = {
        name = 'Shrouded',
        label = 'Shrouded',
        text = {
            'Card flips when obtained,',
            'cannot be unflipped'
        }
    },
    sets = {
        Joker = true
    },
    rate = 0.5,
    needs_enable_flag = true,
    badge_colour = HEX('54575c'),
    atlas = 'chdpstickers',
    pos = {x = 1, y = 0},
    apply = function(self, card, layer)
        card:flip()
    end
}

--[[SMODS.Challenge{
        loc_txt = "Test",
        key = 'test',
        rules = {
            custom = {
                {id = 'random_jokers', value = 500}
            },
            modifiers = {
            },
        },
        jokers = {
        },
        restrictions = {
            banned_cards = {},
            banned_tags = {},
            banned_other = {}
        },
        }

SMODS.Challenge{
        loc_txt = "Test 2",
        key = 'test_2',
        rules = {
            custom = {
                {id = 'disable_small'},
                {id = 'disable_big'}
            },
            modifiers = {
            },
        },
        jokers = {
        },
        restrictions = {
            banned_cards = {},
            banned_tags = {},
            banned_other = {}
        },
        }
        
SMODS.Challenge{
    loc_txt = "Balatro: Sticker Star",
    key = "chdp_sticker_1",
    rules = {
        custom = {
            {id = 'enable_rental_jokers'},
            {id = 'enable_eternal_jokers'},
            {id = 'enable_perishable_jokers'},
            {id = 'enable_singular_jokers'},
            {id = 'enable_scattering_jokers'},
            {id = 'enable_reactive_jokers'},
            {id = 'enable_hindered_jokers'}
        }
    }
}

SMODS.Challenge{
    loc_txt = "Balatro: Sticker Star II",
    key = "chdp_sticker_2",
    rules = {
        custom = {
            {id = 'all_eternal'},
            {id = 'all_rental_jokers'},
            {id = 'all_singular_jokers'},
            {id = 'all_scattering_jokers'},
            {id = 'all_reactive_jokers'},
            {id = 'all_hindered_jokers'}
        }
    }
}]]