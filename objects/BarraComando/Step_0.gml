var _ctrl = keyboard_check(vk_control);

if (!ativa) {
    if (_ctrl && keyboard_check_pressed(vk_up)) {
        pausa_sprite = sprite_create_from_surface(application_surface, 0, 0,
            surface_get_width(application_surface), surface_get_height(application_surface),
            false, false, 0, 0);
        instance_deactivate_all(true);
        keyboard_string = "";
        ativa = true;
    }
    exit;
}

if (_ctrl && keyboard_check_pressed(vk_down)) {
    instance_activate_all();
    sprite_delete(pausa_sprite);
    ativa = false;
    exit;
}

if (keyboard_check_pressed(vk_enter)) {
    commands(keyboard_string);
    keyboard_string = "";
}