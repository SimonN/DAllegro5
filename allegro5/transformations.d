module allegro5.transformations;

import allegro5.display;
import allegro5.internal.da5;

extern (C)
{
	struct ALLEGRO_TRANSFORM
	{
		float[4][4] m;
	}

	/* Transformations*/
	void al_use_transform(in ALLEGRO_TRANSFORM* trans);
	void al_copy_transform(in ALLEGRO_TRANSFORM* src, ALLEGRO_TRANSFORM* dest);
	void al_identity_transform(ALLEGRO_TRANSFORM* trans);
	void al_build_transform(ALLEGRO_TRANSFORM* trans, float x, float y, float sx, float sy, float theta);
	void al_translate_transform(ALLEGRO_TRANSFORM* trans, float x, float y);
	void al_rotate_transform(ALLEGRO_TRANSFORM* trans, float theta);
	void al_scale_transform(ALLEGRO_TRANSFORM* trans, float sx, float sy);
	void al_transform_coordinates(in ALLEGRO_TRANSFORM* trans, float* x, float* y);
	void al_compose_transform(in ALLEGRO_TRANSFORM* trans, ALLEGRO_TRANSFORM* trans2);
	ALLEGRO_TRANSFORM* al_get_current_transform();
	const_ALLEGRO_TRANSFORM* al_get_current_inverse_transform();
	void al_invert_transform(ALLEGRO_TRANSFORM* trans);
	int  al_check_inverse(in ALLEGRO_TRANSFORM* trans, float tol);
	void al_ortho_transform(ALLEGRO_TRANSFORM* trans, float left, float right, float top, float bottom, float n, float f);
	ALLEGRO_TRANSFORM* al_get_projection_transform(ALLEGRO_DISPLAY* display);
	void al_set_projection_transform(ALLEGRO_DISPLAY* display, ALLEGRO_TRANSFORM* t);
}
