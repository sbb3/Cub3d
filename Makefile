CC = gcc

CFLAGS = -Wall -Wextra -Werror -I../incl/

MLXFLAGS = -lmlx -framework OpenGL -framework AppKit

RM = rm -rf

$(VERBOSE).SILENT:

COLOUR_BLUE=\033[0;35m

SRCS = ./srcs/game/render/cub3d.c \
	./srcs/game/render/init.c \
	./srcs/game/render/draw/render.c \
	./srcs/game/render/draw/paint.c \
	./srcs/game/render/draw/renderUtils.c \
	./srcs/game/render/draw/renderUtils2.c \
	./srcs/game/render/draw/renderUtils3.c \
	./srcs/game/render/movements/movements.c \
	./srcs/game/render/movements/movementsHelpers.c \
	./srcs/game/render/movements/movementsHelpers2.c \
	./srcs/game/render/movements/movementsHelpers3.c \
	./srcs/game/render/helpers/imageHelpers.c \
	./srcs/game/render/helpers/createImages.c \
	./srcs/game/render/helpers/getSetColors.c \
	./srcs/game/render/helpers/initHelpers.c \
	./srcs/game/render/helpers/generalHelpers.c \
	./srcs/game/render/quit.c \
	./srcs/game/render/free.c \
	./srcs/game/parser/autre_function.c \
	./srcs/game/parser/cheak_content_map.c \
	./srcs/game/parser/cheak.c \
	./srcs/game/parser/encoded_color.c \
	./srcs/game/parser/get_content.c \
	./srcs/game/parser/get.c \
	./srcs/game/parser/help_function.c \
	./srcs/game/parser/les_cas.c \
	./srcs/game/parser/parcing_map.c \


SRCS_BONUS = ./srcs_bonus/game_bonus/render_bonus/cub3d_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/init_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/draw_bonus/render_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/draw_bonus/paint_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/draw_bonus/renderUtils_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/draw_bonus/renderUtils2_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/draw_bonus/renderUtils3_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/movements_bonus/movements_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/movements_bonus/movementsHelpers_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/movements_bonus/movementsHelpers2_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/movements_bonus/movementsHelpers3_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/helpers_bonus/imageHelpers_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/helpers_bonus/createImages_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/helpers_bonus/getSetColors_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/helpers_bonus/initHelpers_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/helpers_bonus/generalHelpers_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/quit_bonus.c \
	./srcs_bonus/game_bonus/render_bonus/free_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/autre_function_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/cheak_content_map_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/cheak_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/encoded_color_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/get_content_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/get_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/help_function_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/les_cas_bonus.c \
	./srcs_bonus/game_bonus/parser_bonus/parcing_map_bonus.c 

OBJS = $(SRCS:%.c=%.o)

OBJS_BONUS = $(SRCS_BONUS:%.c=%.o)

NAME = cub3D

NAME_BONUS = cub3D_bonus

all: $(NAME)

bonus: $(NAME_BONUS)

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) $(OBJS) $(MLXFLAGS) -o $(NAME)
	@echo "👉 $(COLOUR_BLUE)COMPILING DONE$(COLOUR_END) 👈"


$(NAME_BONUS): $(OBJS_BONUS)
	@$(CC) $(CFLAGS) $(OBJS_BONUS) $(MLXFLAGS) -o $(NAME_BONUS)
	@echo "👉 $(COLOUR_BLUE)COMPILING BONUS DONE$(COLOUR_END) 👈"

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@$(RM) $(OBJS) $(OBJS_BONUS)

fclean: clean
	@$(RM) $(NAME) $(NAME_BONUS)

re: fclean all
